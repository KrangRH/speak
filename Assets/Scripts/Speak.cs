using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Speak : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        WindowsVoice.initSpeech();
        WindowsVoice.theVoice.test();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void saysomething(string text)
    {
        WindowsVoice.speak(text, 0);
    }

}
