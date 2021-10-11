{*******************************************************}
{                                                       }
{         Delphi Compiler Version                       }
{                                                       }
{         By Cirec [www.DelphiFr.com]  2006             }
{                                                       }
{*******************************************************}



(*{$IfDef VER120 or higher}  // D4 ++
  {$DEFINE D4OrHigher}
    {$IfDef VER130 or higher}  // D5 ++
      {$DEFINE D5OrHigher}
        {$IfDef VER140 or higher}  // D6 ++
          {$DEFINE D6OrHigher}
            {$IfDef VER150 or higher}  // D7 ++
              {$DEFINE D7OrHigher}
                {$IfDef VER170 or higher}  // D9 ++
                  {$DEFINE D9OrHigher}
                    {$IfDef VER180 or higher}  // D9 ++
                      {$DEFINE D10OrHigher}
                       {$IfDef VER190 or higher}  // D2007 ++
                         {$DEFINE D2007rHigher}
                          {$IfDef VER200 or higher}  // D2009 ++
                            {$DEFINE D2009rHigher}
                     {$ENDIF}
                   {$ENDIF}
                 {$ENDIF}
                {$ENDIF}
           {$ENDIF}
        {$ENDIF}
    {$ENDIF}
{$ENDIF} *)

{$IFDEF VER120 or higher} // D4 ++
  {$DEFINE D4OrHigher}
  {$DEFINE D4}
{$ENDIF}

{$IFDEF VER130 or higher} // D5 ++
  {$DEFINE D4OrHigher}
  {$DEFINE D5OrHigher}
  {$DEFINE D5}
{$ENDIF}

{$IFDEF VER140 or higher} // D6 ++          {$DEFINE D6OrHigher}
  {$DEFINE D4OrHigher}
  {$DEFINE D5OrHigher}
  {$DEFINE D6OrHigher}
  {$DEFINE D6}
{$ENDIF}

{$IFDEF VER150 or higher} // D7 ++
  {$DEFINE D4OrHigher}
  {$DEFINE D5OrHigher}
  {$DEFINE D6OrHigher}
  {$DEFINE D7OrHigher}
  {$DEFINE D7}
{$ENDIF}

{$IFDEF VER170 or higher} // D9 ++
  {$DEFINE D4OrHigher}
  {$DEFINE D5OrHigher}
  {$DEFINE D6OrHigher}
  {$DEFINE D7OrHigher}
  {$DEFINE D9OrHigher}
  {$DEFINE D9}
{$ENDIF}

{$IFDEF VER180 or higher} // D10 ++
  {$DEFINE D4OrHigher}
  {$DEFINE D5OrHigher}
  {$DEFINE D6OrHigher}
  {$DEFINE D7OrHigher}
  {$DEFINE D9OrHigher}
  {$DEFINE D10OrHigher}
  {$DEFINE D10}
{$ENDIF}

{$IFDEF VER190 or higher} // D2007 ++
  {$DEFINE D4OrHigher}
  {$DEFINE D5OrHigher}
  {$DEFINE D6OrHigher}
  {$DEFINE D7OrHigher}
  {$DEFINE D9OrHigher}
  {$DEFINE D10OrHigher}
  {$DEFINE D2007rHigher}
  {$DEFINE D2007}
{$ENDIF}

{$IFDEF VER200 or higher} // D2009 ++
  {$DEFINE D4OrHigher}
  {$DEFINE D5OrHigher}
  {$DEFINE D6OrHigher}
  {$DEFINE D7OrHigher}
  {$DEFINE D9OrHigher}
  {$DEFINE D10OrHigher}
  {$DEFINE D2007rHigher}
  {$DEFINE D2009rHigher}
  {$DEFINE D2009}
{$ENDIF}
