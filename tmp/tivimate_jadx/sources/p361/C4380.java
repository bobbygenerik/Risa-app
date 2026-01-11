package p361;

import java.io.IOException;
import java.util.List;
import p013.C0907;
import p329.InterfaceC4104;

/* renamed from: ᵔᐧ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C4380 implements InterfaceC4104 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f16261;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f16262 = 1;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C4390 f16263;

    public /* synthetic */ C4380(C4390 c4390, int i, int i2) {
        this.f16263 = c4390;
        this.f16261 = i;
    }

    public /* synthetic */ C4380(C4390 c4390, int i, List list) {
        this.f16263 = c4390;
        this.f16261 = i;
    }

    public /* synthetic */ C4380(C4390 c4390, int i, List list, boolean z) {
        this.f16263 = c4390;
        this.f16261 = i;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final Object m8861() {
        C4390 c4390 = this.f16263;
        int i = this.f16261;
        c4390.f16324.getClass();
        synchronized (c4390) {
            c4390.f16307.remove(Integer.valueOf(i));
        }
        return C0907.f3832;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final Object m8862() {
        C4390 c4390 = this.f16263;
        int i = this.f16261;
        c4390.f16324.getClass();
        try {
            c4390.f16322.m8873(i, 9);
            synchronized (c4390) {
                c4390.f16307.remove(Integer.valueOf(i));
            }
        } catch (IOException unused) {
        }
        return C0907.f3832;
    }

    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        switch (this.f16262) {
            case 0:
                return m8862();
            case 1:
                return m8861();
            default:
                C4390 c4390 = this.f16263;
                int i = this.f16261;
                c4390.f16324.getClass();
                try {
                    c4390.f16322.m8873(i, 9);
                    synchronized (c4390) {
                        c4390.f16307.remove(Integer.valueOf(i));
                    }
                } catch (IOException unused) {
                }
                return C0907.f3832;
        }
    }
}
