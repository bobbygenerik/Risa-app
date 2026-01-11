package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import p287.C3587;
import p413.AbstractC4911;
import p413.C4914;
import p413.InterfaceC4913;

@Keep
/* loaded from: classes.dex */
public class CctBackendFactory {
    public InterfaceC4913 create(AbstractC4911 abstractC4911) {
        C4914 c4914 = (C4914) abstractC4911;
        return new C3587(c4914.f18335, c4914.f18334, c4914.f18332);
    }
}
