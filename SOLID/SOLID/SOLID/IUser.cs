using System;
using System.Collections.Generic;
using System.Text;

namespace SOLID
{
    //Single Responsability
    interface IUser
    {
        bool Login(string userName, string password);
        bool Register(string userName, string password, string email);
    }

    interface ILogger
    {
        void LogError(string error);
    }

    interface IEmail
    {
        bool SendEmail(string emailContent);
    }
}
