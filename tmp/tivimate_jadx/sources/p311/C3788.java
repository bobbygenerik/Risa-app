package p311;

import java.io.IOException;
import p164.AbstractC2581;
import p164.C2599;
import p164.InterfaceC2592;

/* renamed from: ᐧᵢ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3788 extends AbstractC2581 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3832 f14701;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3788(C3832 c3832, InterfaceC2592 interfaceC2592) {
        super(interfaceC2592);
        this.f14701 = c3832;
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    public final long mo5763(C2599 c2599, long j) {
        try {
            return this.f9801.mo5763(c2599, j);
        } catch (IOException e) {
            this.f14701.f14835 = e;
            throw e;
        }
    }
}
