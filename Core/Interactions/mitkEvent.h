#ifndef EVENT_H_HEADER_INCLUDED_C1889CEE
#define EVENT_H_HEADER_INCLUDED_C1889CEE

#include "mitkCommon.h"

namespace mitk {

//##ModelId=3E5A39350211
//##Documentation
//## @brief represents an Event with all its information
//## @ingroup Interaction
//## 
//## Class, that stores mouse as well as key-events. Type stores the type of
//## event, that has been activated (KeyPress, MouseMove...), Button and Key
//## represent the youse of this event and ButtonState holds the Modifiers,
//## that might have been pressed during the appearance of this event.
//## Ether Button (Mouse) or Key (Keyboard) is set. if both are set
//## accidentally then the button is accepted.
class Event
{
  public:
    //##ModelId=3E5B3007000F
    //##Documentation
    //## @params:
    //## type: type of Event: Mouse or Key Event? (from QEvent->type)
    //## button: mouse-button
    //## buttonState: which other key hast been pressed? (Mouse/Keyboard modifier-keys)
    //## key: pressed key
    Event(int type, int button, int buttonState, int key);

    virtual ~Event();

    //##ModelId=3E5B304700A7
    int GetType() const;

    //##ModelId=3E5B3055015C
    int GetButton() const;

    //##ModelId=3E5B306F0221
    int GetKey() const;

    //##ModelId=3E77630102A1
    bool operator==(const Event& event) const;

    //##ModelId=3E8AE2F20360
    int GetButtonState() const;

  protected:
    //##ModelId=3E5B2F860321
    int m_Type;

    //##ModelId=3E5B2FA60290
    int m_Button;

    //##ModelId=3E8AE2CD02A4
	int m_ButtonState;

	//##ModelId=3E5B2FB10282
    int m_Key;

};

} // namespace mitk

#endif /* EVENT_H_HEADER_INCLUDED_C1889CEE */
