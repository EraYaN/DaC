// Class for processing input for running programs using a SoG-based GPU chip
// EPO3-1 - TU Delft

#include "Util.h"

void InputLib::clearQueue()
{
	while(queueHead != NULL)
		shiftQueue();

	queueHead = NULL;
	queueTail = NULL;
}

void InputLib::cleanUp()
{
	clearQueue();
}

void InputLib::appendKeystrokeToQueue(Keystroke *k)
{
	queueTail->nextKeystroke = k;
	queueTail = k;
	queueTail->nextKeystroke = NULL;

	if (queueHead == NULL)
		queueHead = k;
}

void InputLib::shiftQueue()
{
	Keystroke *tmp = queueHead;
	queueHead = queueHead->nextKeystroke;
	delete tmp;
}

void InputLib::bindKeyToControl(Control *control)
{
	currentControlToBind = control;
}

void InputLib::tick()
{
	while(byte b = keyboard.read() != -1)
	{
		if (currentControlToBind != NULL)
		{
			currentControlToBind->key = b;
			currentControlToBind = NULL;
		}
		else
		{
			appendKeystrokeToQueue(new Keystroke(b));
		}
	}
}