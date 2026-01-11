package p062;

import android.content.Context;
import android.os.Process;
import androidx.lifecycle.C0185;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import p013.C0906;
import p329.InterfaceC4104;
import p430.AbstractC5103;

/* renamed from: ʾˈ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1539 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f6052 = Process.myPid();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0906 f6053;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C0906 f6054;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0906 f6055;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f6056;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f6057;

    public C1539(Context context, C1591 c1591) {
        this.f6056 = context;
        final int i = 0;
        this.f6055 = new C0906(new InterfaceC4104(this) { // from class: ʾˈ.ᴵˊ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C1539 f6154;

            {
                this.f6154 = this;
            }

            @Override // p329.InterfaceC4104
            /* renamed from: ʽ */
            public final Object mo716() {
                switch (i) {
                    case 0:
                        return ((C1576) this.f6154.f6054.getValue()).f6165;
                    default:
                        return AbstractC1556.m4348(this.f6154.f6056);
                }
            }
        });
        this.f6053 = new C0906(new C0185(26, c1591));
        final int i2 = 1;
        this.f6054 = new C0906(new InterfaceC4104(this) { // from class: ʾˈ.ᴵˊ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C1539 f6154;

            {
                this.f6154 = this;
            }

            @Override // p329.InterfaceC4104
            /* renamed from: ʽ */
            public final Object mo716() {
                switch (i2) {
                    case 0:
                        return ((C1576) this.f6154.f6054.getValue()).f6165;
                    default:
                        return AbstractC1556.m4348(this.f6154.f6056);
                }
            }
        });
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Map m4343(Map map) {
        C0906 c0906 = this.f6053;
        if (map == null) {
            return Collections.singletonMap(m4344(), new C1541(Process.myPid(), (String) c0906.getValue()));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put(m4344(), new C1541(Process.myPid(), (String) c0906.getValue()));
        return AbstractC5103.m10044(linkedHashMap);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m4344() {
        return (String) this.f6055.getValue();
    }
}
