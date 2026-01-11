package p361;

import java.io.IOException;
import p013.C0907;
import p329.InterfaceC4104;
import p394.AbstractC4710;

/* renamed from: ᵔᐧ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4382 implements InterfaceC4104 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4396 f16272;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C4390 f16273;

    public C4382(C4390 c4390, C4396 c4396) {
        this.f16273 = c4390;
        this.f16272 = c4396;
    }

    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        C4390 c4390 = this.f16273;
        C4396 c4396 = this.f16272;
        try {
            if (!c4396.m8890(true, this)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            do {
            } while (c4396.m8890(false, this));
            c4390.m8879(1, 9, null);
        } catch (IOException e) {
            c4390.m8879(2, 2, e);
        } catch (Throwable th) {
            c4390.m8879(3, 3, null);
            AbstractC4710.m9437(c4396);
            throw th;
        }
        AbstractC4710.m9437(c4396);
        return C0907.f3832;
    }
}
