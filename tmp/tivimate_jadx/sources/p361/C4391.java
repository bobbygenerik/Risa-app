package p361;

import java.io.IOException;
import p013.C0907;
import p329.InterfaceC4104;

/* renamed from: ᵔᐧ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C4391 implements InterfaceC4104 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f16329;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f16330;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ int f16331;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C4390 f16332;

    public /* synthetic */ C4391(C4390 c4390, int i, int i2, int i3) {
        this.f16330 = i3;
        this.f16332 = c4390;
        this.f16329 = i;
        this.f16331 = i2;
    }

    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        switch (this.f16330) {
            case 0:
                C4390 c4390 = this.f16332;
                try {
                    c4390.f16322.m8873(this.f16329, this.f16331);
                } catch (IOException e) {
                    c4390.m8879(2, 2, e);
                }
                return C0907.f3832;
            default:
                C4390 c43902 = this.f16332;
                try {
                    c43902.f16322.m8871(this.f16329, this.f16331, true);
                } catch (IOException e2) {
                    c43902.m8879(2, 2, e2);
                }
                return C0907.f3832;
        }
    }
}
