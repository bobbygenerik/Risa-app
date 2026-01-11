package p392;

import android.content.Context;
import java.util.HashMap;
import p017.C0956;
import p076.AbstractC1659;
import p095.InterfaceC1882;
import p171.C2631;
import p188.C2860;
import p364.C4446;
import p420.C4982;
import p428.C5078;

/* renamed from: ⁱי.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C4648 implements InterfaceC1882 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f17427;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Context f17428;

    public /* synthetic */ C4648(Context context, int i) {
        this.f17427 = i;
        this.f17428 = context;
    }

    @Override // p095.InterfaceC1882
    public final Object get() {
        C4446 c4446;
        switch (this.f17427) {
            case 0:
                return AbstractC1659.m4534(this.f17428);
            case 1:
                return new C4982(this.f17428, new C2631());
            case 2:
                return new C5078(this.f17428, new C2860(10000, 0.75f));
            default:
                Context context = this.f17428;
                C0956 c0956 = C4446.f16611;
                synchronized (C4446.class) {
                    try {
                        if (C4446.f16610 == null) {
                            Context applicationContext = context == null ? null : context.getApplicationContext();
                            HashMap hashMap = new HashMap(8);
                            hashMap.put(0, 1000000L);
                            hashMap.put(2, -9223372036854775807L);
                            hashMap.put(3, -9223372036854775807L);
                            hashMap.put(4, -9223372036854775807L);
                            hashMap.put(5, -9223372036854775807L);
                            hashMap.put(10, -9223372036854775807L);
                            hashMap.put(9, -9223372036854775807L);
                            hashMap.put(7, -9223372036854775807L);
                            C4446.f16610 = new C4446(applicationContext, hashMap);
                        }
                        c4446 = C4446.f16610;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return c4446;
        }
    }
}
