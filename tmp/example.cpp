/*
 * g++ -O3 example.cpp && ./a.out
 */

#include <iostream>
#include <cstdint>
#include <memory>
#include <vector>
#include <algorithm>

using namespace std;

class Actor
{
    private: static vector<Actor*> ms_actors;

    private: double m_x;
    private: double m_y;
    
    public: double getX()
    {
        return m_x;
    }
    public: Actor &setX(double x)
    {
        cout << "Setting X to " << x << " in Actor" << endl;
        m_x = x;

        return *this;
    }

    public: double getY()
    {
        return m_y;
    }
    public: Actor &setY(double y)
    {
        cout << "Setting Y to " << y << " in Actor" << endl;
        m_y = y;

        return *this;
    }

    public: Actor()
    {
        ms_actors.push_back(this);
    }

    public: ~Actor()
    {
        ms_actors.erase(remove(ms_actors.begin(), ms_actors.end(), this));
    }
};

vector<Actor*> Actor::ms_actors;

class CollisionBox
{
    private: static vector<vector<CollisionBox*>> ms_layers;

    private: Actor *mp_actor;
    private: uint_fast8_t m_layer;
    
    public: Actor &setX(double x)
    {
        cout << "Setting X to " << x << " from CollisionBox" << endl;
        mp_actor->setX(x);

        return *mp_actor;
    }

    public: Actor &setY(double y)
    {
        cout << "Setting Y to " << y << " from CollisionBox" << endl;
        mp_actor->setY(y);

        return *mp_actor;
    }

    protected: CollisionBox(Actor *p_actor, uint_fast8_t layer)
    {
        mp_actor = p_actor;
        m_layer = layer;
        ms_layers[layer].push_back(this);
    }

    public: ~CollisionBox()
    {
        ms_layers[m_layer].erase(remove(ms_layers[m_layer].begin(),
                                        ms_layers[m_layer].end(), this));
    }
};

vector<vector<CollisionBox*>> CollisionBox::ms_layers(UINT_FAST8_MAX);

class Player : public Actor, private CollisionBox
{
    private: using CollisionBox::setX;
    private: using CollisionBox::setY;

    public: Player() : CollisionBox(static_cast<Actor*>(this), 0)
    {
        this->setX(5);
        this->setY(10);
    }
};

int32_t main(void)
{
    unique_ptr<Actor> player(new Player);

    cout << "Player position: X: " << player->getX() <<
                            " Y: " << player->getY() << '.' << endl;

    return 0;
}
