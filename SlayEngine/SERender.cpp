#include "SlayEngine.hpp"

namespace slay
{
    engine::render::render(engine* Engine) : Engine(Engine)
    {
        this->RenderWidth = 0;
        this->RenderHeight = 0;
        this->SamplingStep = 0.002;
        this->BufferSize = 6 * 1024 / sizeof(token);
        this->RenderQueueLength = 0;
        this->RenderQueue = NULL;
    }

    engine::render::~render()
    {
        free(this->RenderQueue);
    }

    engine::render::token::token() {}

    engine::render::token::token(void* Data, type Type, double Layer, uint8 Priority, SDL_Rect Area)
    {
        this->Data = Data;
        this->Type = Type;
        this->Layer = Layer;
        this->Priority = Priority;
        this->Area = Area;
    }

    double engine::render::GetSamplingStep()
    {
        return this->SamplingStep;
    }

    double engine::render::SetSamplingStep(double SamplingStep)
    {
        if (SamplingStep <= 0)
        {
            printf("slay::engine.render.SetSamplingStep(): SamplingStep must not be less than or equal to 0\nParams: SamplingStep: %lf\n", SamplingStep);
            exit(1);
        }

        return this->SamplingStep = SamplingStep;
    }

    uint16 engine::render::GetBufferSizeKB()
    {
        return sizeof(token) * this->BufferSize / 1024;
    }

    uint16 engine::render::SetBufferSizeKB(uint16 KiloBytes)
    {
        return this->BufferSize = KiloBytes * 1024 / sizeof(token);
    }

    uint8 engine::render::Update()
    {
        this->SelectionStage();
        this->OrderingStage();
        this->RenderingStage();

        return 0;
    }

    uint8 engine::render::SelectionStage()
    {
        uint64 k;
        double x, y, layer, depth;
        SDL_Rect area;
        SDL_Color color;
        SDL_Surface* surface;

        k = 0;
        for (uint64 i = 1; i < this->Engine->Actors.Actors.Length(); i++)
        {
            if (this->Engine->Actors.Actors[i] == NULL)
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Colors.Colors.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Colors.Colors[j] == NULL || this->Engine->Actors.Actors[i]->Colors.Colors[j]->Width == 0 || this->Engine->Actors.Actors[i]->Colors.Colors[j]->Height == 0 || this->Engine->Actors.Actors[i]->Colors.Colors[j]->ColorA == 0 || this->Engine->Actors.Actors[i]->Colors.Colors[j]->Visible == false)
                {
                    continue;
                }

                x = this->Engine->Actors.Actors[i]->X + this->Engine->Actors.Actors[i]->Colors.Colors[j]->OffsetX;
                y = this->Engine->Actors.Actors[i]->Y + this->Engine->Actors.Actors[i]->Colors.Colors[j]->OffsetY;

                if ((layer = this->Engine->Actors.Actors[i]->Layer - this->Engine->Actors.Actors[i]->Depth / 2) < 0)
                {
                    layer = EPSILON;
                }
                if ((depth = this->Engine->Actors.Actors[i]->Layer + this->Engine->Actors.Actors[i]->Depth / 2) == layer)
                {
                    depth += EPSILON;
                }

                for (; layer < depth; layer += this->SamplingStep)
                {
                    area = this->Engine->Camera.Transform(x, y, this->Engine->Actors.Actors[i]->Colors.Colors[j]->Width, this->Engine->Actors.Actors[i]->Colors.Colors[j]->Height, layer);

                    if (area.w == 0 || area.h == 0)
                    {
                        continue;
                    }

                    if (0 < k && this->RenderQueue[k - 1].Data == this->Engine->Actors.Actors[i]->Colors.Colors[j] && !(this->RenderQueue[k - 1].Area.x != area.x || this->RenderQueue[k - 1].Area.y != area.y || this->RenderQueue[k - 1].Area.w != area.w || this->RenderQueue[k - 1].Area.h != area.h))
                    {
                        this->RenderQueue[k - 1].Layer = layer;
                        continue;
                    }

                    if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                    {
                        if (k == this->RenderQueueLength && (this->RenderQueue = (token*)realloc(this->RenderQueue, sizeof(token) * (++this->RenderQueueLength += this->BufferSize))) == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                        
                        this->RenderQueue[k++] = token(this->Engine->Actors.Actors[i]->Colors.Colors[j], COLOR, layer, this->Engine->Actors.Actors[i]->Colors.Colors[j]->Priority, area);
                    }
                }
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Textures.Textures.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Textures.Textures[j] == NULL || this->Engine->Actors.Actors[i]->Textures.Textures[j]->Width == 0 || this->Engine->Actors.Actors[i]->Textures.Textures[j]->Height == 0 || this->Engine->Actors.Actors[i]->Textures.Textures[j]->ColorA == 0 || this->Engine->Actors.Actors[i]->Textures.Textures[j]->Visible == false || this->Engine->Actors.Actors[i]->Textures.Textures[j]->TextureID == 0)
                {
                    continue;
                }

                x = this->Engine->Actors.Actors[i]->X + this->Engine->Actors.Actors[i]->Textures.Textures[j]->OffsetX;
                y = this->Engine->Actors.Actors[i]->Y + this->Engine->Actors.Actors[i]->Textures.Textures[j]->OffsetY;

                if ((layer = this->Engine->Actors.Actors[i]->Layer - this->Engine->Actors.Actors[i]->Depth / 2) < 0)
                {
                    layer = EPSILON;
                }
                if ((depth = this->Engine->Actors.Actors[i]->Layer + this->Engine->Actors.Actors[i]->Depth / 2) == layer)
                {
                    depth += EPSILON;
                }

                for (; layer < depth; layer += this->SamplingStep)
                {
                    area = this->Engine->Camera.Transform(x, y, this->Engine->Actors.Actors[i]->Textures.Textures[j]->Width, this->Engine->Actors.Actors[i]->Textures.Textures[j]->Height, layer);

                    if (area.w == 0 || area.h == 0)
                    {
                        continue;
                    }

                    if (0 < k && this->RenderQueue[k - 1].Data == this->Engine->Actors.Actors[i]->Textures.Textures[j] && !(this->RenderQueue[k - 1].Area.x != area.x || this->RenderQueue[k - 1].Area.y != area.y || this->RenderQueue[k - 1].Area.w != area.w || this->RenderQueue[k - 1].Area.h != area.h))
                    {
                        this->RenderQueue[k - 1].Layer = layer;
                        continue;
                    }

                    if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                    {
                        if (k == this->RenderQueueLength && (this->RenderQueue = (token*)realloc(this->RenderQueue, sizeof(token) * (++this->RenderQueueLength += this->BufferSize))) == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                            
                        this->RenderQueue[k++] = token(this->Engine->Actors.Actors[i]->Textures.Textures[j], TEXTURE, layer, this->Engine->Actors.Actors[i]->Textures.Textures[j]->Priority, area);
                    }
                }
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j] == NULL || this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Width == 0 || this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Height == 0 || this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->ColorA == 0 || this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Visible == false || this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Textures[this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Current] == 0)
                {
                    continue;
                }

                x = this->Engine->Actors.Actors[i]->X + this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->OffsetX;
                y = this->Engine->Actors.Actors[i]->Y + this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->OffsetY;

                if ((layer = this->Engine->Actors.Actors[i]->Layer - this->Engine->Actors.Actors[i]->Depth / 2) < 0)
                {
                    layer = EPSILON;
                }
                if ((depth = this->Engine->Actors.Actors[i]->Layer + this->Engine->Actors.Actors[i]->Depth / 2) == layer)
                {
                    depth += EPSILON;
                }

                for (; layer < depth; layer += this->SamplingStep)
                {
                    area = this->Engine->Camera.Transform(x, y, this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Width, this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Height, layer);

                    if (area.w == 0 || area.h == 0)
                    {
                        continue;
                    }

                    if (0 < k && this->RenderQueue[k - 1].Data == this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j] && !(this->RenderQueue[k - 1].Area.x != area.x || this->RenderQueue[k - 1].Area.y != area.y || this->RenderQueue[k - 1].Area.w != area.w || this->RenderQueue[k - 1].Area.h != area.h))
                    {
                        this->RenderQueue[k - 1].Layer = layer;
                        continue;
                    }

                    if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                    {
                        if (k == this->RenderQueueLength && (this->RenderQueue = (token*)realloc(this->RenderQueue, sizeof(token) * (++this->RenderQueueLength += this->BufferSize))) == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }

                        this->RenderQueue[k++] = token(this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j], FLIPBOOK, layer, this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Priority, area);
                    }
                }
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Texts.Texts.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Texts.Texts[j] == NULL || this->Engine->Actors.Actors[i]->Texts.Texts[j]->String.Length() < 2 || this->Engine->Actors.Actors[i]->Texts.Texts[j]->Height == 0 || this->Engine->Actors.Actors[i]->Texts.Texts[j]->ColorA == 0 || this->Engine->Actors.Actors[i]->Texts.Texts[j]->Visible == false || this->Engine->Actors.Actors[i]->Texts.Texts[j]->FontID == 0)
                {
                    continue;
                }

                if (this->Engine->Actors.Actors[i]->Texts.Texts[j]->Texture == NULL)
                {
                    color.r = color.g = color.b = color.a = 255;

                    if ((surface = TTF_RenderText_Blended(this->Engine->Assets.Fonts[this->Engine->Actors.Actors[i]->Texts.Texts[j]->FontID], this->Engine->Actors.Actors[i]->Texts.Texts[j]->String(), color)) == NULL)
                    {
                        printf("slay::engine.render.SelectionStage(): TTF_RenderText_Blended failed\n");
                        exit(1);
                    }
                    if ((this->Engine->Actors.Actors[i]->Texts.Texts[j]->Texture = SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, surface)) == NULL)
                    {
                        printf("slay::engine.render.SelectionStage(): SDL_CreateTextureFromSurface failed\n");
                        exit(1);
                    }

                    this->Engine->Actors.Actors[i]->Texts.Texts[j]->Width = surface->w * this->Engine->Actors.Actors[i]->Texts.Texts[j]->Height / surface->h;
                    SDL_FreeSurface(surface);
                }

                x = this->Engine->Actors.Actors[i]->X + this->Engine->Actors.Actors[i]->Texts.Texts[j]->OffsetX;
                y = this->Engine->Actors.Actors[i]->Y + this->Engine->Actors.Actors[i]->Texts.Texts[j]->OffsetY;
                
                if ((layer = this->Engine->Actors.Actors[i]->Layer - this->Engine->Actors.Actors[i]->Depth / 2) < 0)
                {
                    layer = EPSILON;
                }
                if ((depth = this->Engine->Actors.Actors[i]->Layer + this->Engine->Actors.Actors[i]->Depth / 2) == layer)
                {
                    depth += EPSILON;
                }

                for (; layer < depth; layer += this->SamplingStep)
                {
                    area = this->Engine->Camera.Transform(x, y, this->Engine->Actors.Actors[i]->Texts.Texts[j]->Width, this->Engine->Actors.Actors[i]->Texts.Texts[j]->Height, layer);

                    if (area.w == 0 || area.h == 0)
                    {
                        continue;
                    }

                    if (0 < k && this->RenderQueue[k - 1].Data == this->Engine->Actors.Actors[i]->Texts.Texts[j] && !(this->RenderQueue[k - 1].Area.x != area.x || this->RenderQueue[k - 1].Area.y != area.y || this->RenderQueue[k - 1].Area.w != area.w || this->RenderQueue[k - 1].Area.h != area.h))
                    {
                        this->RenderQueue[k - 1].Layer = layer;
                        continue;
                    }

                    if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                    {
                        if (k == this->RenderQueueLength && (this->RenderQueue = (token*)realloc(this->RenderQueue, sizeof(token) * (++this->RenderQueueLength += this->BufferSize))) == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }

                        this->RenderQueue[k++] = token(this->Engine->Actors.Actors[i]->Texts.Texts[j], TEXT, layer, this->Engine->Actors.Actors[i]->Texts.Texts[j]->Priority, area);
                    }
                }
            }

            if (this->Engine->Actors.Actors[i]->HitboxVisible && this->Engine->Actors.Actors[i]->HitboxWidth != 0 && this->Engine->Actors.Actors[i]->HitboxHeight != 0)
            {
                area = this->Engine->Camera.Transform(this->Engine->Actors.Actors[i]->X, this->Engine->Actors.Actors[i]->Y, this->Engine->Actors.Actors[i]->HitboxWidth, this->Engine->Actors.Actors[i]->HitboxHeight, this->Engine->Actors.Actors[i]->Layer);

                if (area.w != 0 && area.h != 0 && ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight)))
                {
                    if (k == this->RenderQueueLength && (this->RenderQueue = (token*)realloc(this->RenderQueue, sizeof(token) * (++this->RenderQueueLength += this->BufferSize))) == NULL)
                    {
                        printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                        exit(1);
                    }

                    this->RenderQueue[k++] = token(this->Engine->Actors.Actors[i], HITBOX, this->Engine->Actors.Actors[i]->Layer, 255, area);
                }
            }
        }

        if (k < this->RenderQueueLength && (this->RenderQueue = (token*)realloc(this->RenderQueue, sizeof(token) * (this->RenderQueueLength = k))) == NULL)
        {
            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
            exit(1);
        }
        if (this->RenderQueueLength == 0)
        {
            this->RenderQueue = NULL;
        }

        return 0;
    }

    uint8 engine::render::OrderingStage()
    {
        uint64 i, j;

        this->OrderByLayer(0, this->RenderQueueLength);
        for (i = 1, j = 0; i < this->RenderQueueLength; i++)
        {
            if (this->RenderQueue[i].Layer != this->RenderQueue[j].Layer)
            {
                this->OrderByPriority(j, i);
                j = i;
            }
        }
        this->OrderByPriority(j, i);

        return 0;
    }

    uint8 engine::render::OrderByLayer(uint64 From, uint64 Until)
    {
        uint64 size, left, middle, right, cache;

        cache = Until - 1;

        for (size = 1; size < Until; size *= 2)
        {
            for (left = From; left < cache; left += size * 2)
            {
                if (cache < (middle = left + size - 1))
                {
                    middle = cache;
                }
                if (cache < (right = left + size * 2 - 1))
                {
                    right = cache;
                }

                this->OrderByLayerMerge(left, middle, right);
            }
        }

        return 0;
    }

    uint8 engine::render::OrderByLayerMerge(uint64 Left, uint64 Middle, uint64 Right)
    {
        uint64 i, j, k, n1, n2;
        token* left;
        token* right;

        if ((left = (token*)malloc(sizeof(token) * (n1 = Middle - Left + 1))) == NULL)
        {
            printf("slay::engine.render.OrderByLayerMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld", Left, Middle, Right);
            exit(1);
        }
        if ((right = (token*)malloc(sizeof(token) * (n2 = Right - Middle))) == NULL)
        {
            printf("slay::engine.render.OrderByLayerMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld", Left, Middle, Right);
            exit(1);
        }

        for (i = 0; i < n1; i++)
        {
            left[i] = this->RenderQueue[Left + i];
        }
        for (j = 0; j < n2; j++)
        {
            right[j] = this->RenderQueue[Middle + j + 1];
        }

        for (i = 0, j = 0, k = Left; i < n1 && j < n2; k++)
        {
            if (right[j].Layer < left[i].Layer)
            {
                this->RenderQueue[k] = right[j];
                j++;
            }
            else
            {
                this->RenderQueue[k] = left[i];
                i++;
            }
        }

        while (i < n1)
        {
            this->RenderQueue[k] = left[i];
            i++;
            k++;
        }
        while (j < n2)
        {
            this->RenderQueue[k] = right[j];
            j++;
            k++;
        }

        free(left);
        free(right);

        return 0;
    }

    uint8 engine::render::OrderByPriority(uint64 From, uint64 Until)
    {
        uint64 size, left, middle, right, cache;

        cache = Until - 1;

        for (size = 1; size < Until; size *= 2)
        {
            for (left = From; left < cache; left += size * 2)
            {
                if (cache < (middle = left + size - 1))
                {
                    middle = cache;
                }
                if (cache < (right = left + size * 2 - 1))
                {
                    right = cache;
                }

                this->OrderByPriorityMerge(left, middle, right);
            }
        }

        return 0;
    }

    uint8 engine::render::OrderByPriorityMerge(uint64 Left, uint64 Middle, uint64 Right)
    {
        uint64 i, j, k, n1, n2;
        token* left;
        token* right;

        if ((left = (token*)malloc(sizeof(token) * (n1 = Middle - Left + 1))) == NULL)
        {
            printf("slay::engine.render.OrderByPriorityMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld", Left, Middle, Right);
            exit(1);
        }
        if ((right = (token*)malloc(sizeof(token) * (n2 = Right - Middle))) == NULL)
        {
            printf("slay::engine.render.OrderByPriorityMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld", Left, Middle, Right);
            exit(1);
        }

        for (i = 0; i < n1; i++)
        {
            left[i] = this->RenderQueue[Left + i];
        }
        for (j = 0; j < n2; j++)
        {
            right[j] = this->RenderQueue[Middle + j + 1];
        }

        for (i = 0, j = 0, k = Left; i < n1 && j < n2; k++)
        {
            if (right[j].Priority < left[i].Priority)
            {
                this->RenderQueue[k] = right[j];
                j++;
            }
            else
            {
                this->RenderQueue[k] = left[i];
                i++;
            }
        }

        while (i < n1)
        {
            this->RenderQueue[k] = left[i];
            i++;
            k++;
        }
        while (j < n2)
        {
            this->RenderQueue[k] = right[j];
            j++;
            k++;
        }

        free(left);
        free(right);

        return 0;
    }

    uint8 engine::render::RenderingStage()
    {
        uint64 layered;

        if (SDL_SetRenderDrawColor(this->Engine->Window.Renderer, 0, 0, 0, 255) != 0)
        {
            printf("slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed\n");
            exit(1);
        }
        if (SDL_RenderClear(this->Engine->Window.Renderer) != 0)
        {
            printf("slay::engine.render.OpenFrame(): SDL_RenderClear() failed\n");
            exit(1);
        }

        layered = 0;
        for (uint64 i = 0; i < this->RenderQueueLength; i++)
        {
            if (0 < this->RenderQueue[i].Layer)
            {
                layered = i;
                break;
            }
        }

        for (uint64 i = layered; i < this->RenderQueueLength; i++)
        {
            switch (this->RenderQueue[i].Type)
            {
                case COLOR:
                    this->RenderColor(this->RenderQueue[i]);
                break;

                case TEXTURE:
                    this->RenderTexture(this->RenderQueue[i]);
                break;

                case FLIPBOOK:
                    this->RenderFlipbook(this->RenderQueue[i]);
                break;

                case TEXT:
                    this->RenderText(this->RenderQueue[i]);
                break;

                case HITBOX:
                    this->RenderHitbox(this->RenderQueue[i]);
                break;
            }
        }

        for (uint64 i = 0; i < layered; i++)
        {
            switch (this->RenderQueue[i].Type)
            {
                case COLOR:
                    this->RenderColor(this->RenderQueue[i]);
                break;

                case TEXTURE:
                    this->RenderTexture(this->RenderQueue[i]);
                break;

                case FLIPBOOK:
                    this->RenderFlipbook(this->RenderQueue[i]);
                break;

                case TEXT:
                    this->RenderText(this->RenderQueue[i]);
                break;

                case HITBOX:
                    this->RenderHitbox(this->RenderQueue[i]);
                break;
            }
        }

        SDL_RenderPresent(this->Engine->Window.Renderer);

        return 0;
    }

    uint8 engine::render::RenderColor(token Token)
    {
        if (SDL_SetRenderDrawColor(this->Engine->Window.Renderer, ((engine::actors::actor::colors::color*)Token.Data)->ColorR, ((engine::actors::actor::colors::color*)Token.Data)->ColorG, ((engine::actors::actor::colors::color*)Token.Data)->ColorB, ((engine::actors::actor::colors::color*)Token.Data)->ColorA) != 0)
        {
            printf("slay::engine.render.RenderColor(): SDL_SetRenderDrawColor failed\n");
            exit(1);
        }
        if (SDL_RenderFillRect(this->Engine->Window.Renderer, &Token.Area) != 0)
        {
            printf("slay::engine.render.RenderColor(): SDL_RenderFillRect failed\n");
            exit(1);
        }

        return 0;
    }

    uint8 engine::render::RenderTexture(token Token)
    {
        uint8 flip;

        flip = SDL_FLIP_NONE;
        if (((engine::actors::actor::textures::texture*)Token.Data)->FlipHorizontal)
        {
            flip = SDL_FLIP_HORIZONTAL;
        }
        if (((engine::actors::actor::textures::texture*)Token.Data)->FlipVertical)
        {
            flip |= SDL_FLIP_VERTICAL;
        }

        if (SDL_SetTextureColorMod(this->Engine->Assets.Textures[((engine::actors::actor::textures::texture*)Token.Data)->TextureID], ((engine::actors::actor::textures::texture*)Token.Data)->ColorR, ((engine::actors::actor::textures::texture*)Token.Data)->ColorG, ((engine::actors::actor::textures::texture*)Token.Data)->ColorB) != 0)
        {
            printf("slay::engine.render.RenderTexture(): SDL_SetTextureColorMod failed\n");
            exit(1);
        }
        if (SDL_SetTextureAlphaMod(this->Engine->Assets.Textures[((engine::actors::actor::textures::texture*)Token.Data)->TextureID], ((engine::actors::actor::textures::texture*)Token.Data)->ColorA) != 0)
        {
            printf("slay::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed\n");
            exit(1);
        }
        if (SDL_RenderCopyEx(this->Engine->Window.Renderer, this->Engine->Assets.Textures[((engine::actors::actor::textures::texture*)Token.Data)->TextureID], NULL, &Token.Area, -((engine::actors::actor::textures::texture*)Token.Data)->Angle, NULL, (SDL_RendererFlip)flip) != 0)
        {
            printf("slay::engine.render.RenderTexture(): SDL_RenderCopyEx failed\n");
            exit(1);
        }

        return 0;
    }

    uint8 engine::render::RenderFlipbook(token Token)
    {
        uint8 flip;

        flip = SDL_FLIP_NONE;
        if (((engine::actors::actor::flipbooks::flipbook*)Token.Data)->FlipHorizontal)
        {
            flip = SDL_FLIP_HORIZONTAL;
        }
        if (((engine::actors::actor::flipbooks::flipbook*)Token.Data)->FlipVertical)
        {
            flip |= SDL_FLIP_VERTICAL;
        }

        if (SDL_SetTextureColorMod(this->Engine->Assets.Textures[((engine::actors::actor::flipbooks::flipbook*)Token.Data)->Textures[((engine::actors::actor::flipbooks::flipbook*)Token.Data)->Current]], ((engine::actors::actor::flipbooks::flipbook*)Token.Data)->ColorR, ((engine::actors::actor::flipbooks::flipbook*)Token.Data)->ColorG, ((engine::actors::actor::flipbooks::flipbook*)Token.Data)->ColorB) != 0)
        {
            printf("slay::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed\n");
            exit(1);
        }
        if (SDL_SetTextureAlphaMod(this->Engine->Assets.Textures[((engine::actors::actor::flipbooks::flipbook*)Token.Data)->Textures[((engine::actors::actor::flipbooks::flipbook*)Token.Data)->Current]], ((engine::actors::actor::flipbooks::flipbook*)Token.Data)->ColorA) != 0)
        {
            printf("slay::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed\n");
            exit(1);
        }
        if (SDL_RenderCopyEx(this->Engine->Window.Renderer, this->Engine->Assets.Textures[((engine::actors::actor::flipbooks::flipbook*)Token.Data)->Textures[((engine::actors::actor::flipbooks::flipbook*)Token.Data)->Current]], NULL, &Token.Area, -((engine::actors::actor::flipbooks::flipbook*)Token.Data)->Angle, NULL, (SDL_RendererFlip)flip) != 0)
        {
            printf("slay::engine.render.RenderFlipbook(): SDL_RenderCopyEx failed\n");
            exit(1);
        }

        return 0;
    }

    uint8 engine::render::RenderText(token Token)
    {
        uint8 flip;

        flip = SDL_FLIP_NONE;
        if (((engine::actors::actor::texts::text*)Token.Data)->FlipHorizontal)
        {
            flip = SDL_FLIP_HORIZONTAL;
        }
        if (((engine::actors::actor::texts::text*)Token.Data)->FlipVertical)
        {
            flip |= SDL_FLIP_VERTICAL;
        }

        if (SDL_SetTextureColorMod(((engine::actors::actor::texts::text*)Token.Data)->Texture, ((engine::actors::actor::texts::text*)Token.Data)->ColorR, ((engine::actors::actor::texts::text*)Token.Data)->ColorG, ((engine::actors::actor::texts::text*)Token.Data)->ColorB) != 0)
        {
            printf("slay::engine.render.RenderText(): SDL_SetTextureColorMod failed\n");
            exit(1);
        }
        if (SDL_SetTextureAlphaMod(((engine::actors::actor::texts::text*)Token.Data)->Texture, ((engine::actors::actor::texts::text*)Token.Data)->ColorA) != 0)
        {
            printf("slay::engine.render.RenderText(): SDL_SetTextureAlphaMod failed\n");
            exit(1);
        }
        if (SDL_RenderCopyEx(this->Engine->Window.Renderer, ((engine::actors::actor::texts::text*)Token.Data)->Texture, NULL, &Token.Area, -((engine::actors::actor::texts::text*)Token.Data)->Angle, NULL, (SDL_RendererFlip)flip) != 0)
        {
            printf("slay::engine.render.RenderText(): SDL_RenderCopyEx failed\n");
            exit(1);
        }

        return 0;
    }

    uint8 engine::render::RenderHitbox(token Token)
    {
        if (SDL_SetRenderDrawColor(this->Engine->Window.Renderer, 255, 0, 0, 128) != 0)
        {
            printf("slay::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed\n");
            exit(1);
        }
        if (SDL_RenderFillRect(this->Engine->Window.Renderer, &Token.Area) != 0)
        {
            printf("slay::engine.render.RenderHitbox(): SDL_RenderFillRect failed\n");
            exit(1);
        }

        return 0;
    }
}