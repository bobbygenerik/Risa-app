package p279;

import android.content.Context;
import com.bumptech.glide.C0231;
import java.util.HashSet;

/* renamed from: ٴʽ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3542 implements InterfaceC3554 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f13888;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0231 f13889;

    public C3542(Context context, C0231 c0231) {
        this.f13888 = context.getApplicationContext();
        this.f13889 = c0231;
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ʽ */
    public final void mo1159() {
        יـ r0 = יـ.ⁱˊ(this.f13888);
        C0231 c0231 = this.f13889;
        synchronized (r0) {
            ((HashSet) r0.ʽ).remove(c0231);
            if (r0.ﹳٴ && ((HashSet) r0.ʽ).isEmpty()) {
                ((InterfaceC3546) r0.ⁱˊ).mo7495();
                r0.ﹳٴ = false;
            }
        }
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ˆʾ */
    public final void mo1160() {
        יـ r0 = יـ.ⁱˊ(this.f13888);
        C0231 c0231 = this.f13889;
        synchronized (r0) {
            ((HashSet) r0.ʽ).add(c0231);
            if (!r0.ﹳٴ && !((HashSet) r0.ʽ).isEmpty()) {
                r0.ﹳٴ = ((InterfaceC3546) r0.ⁱˊ).mo7494();
            }
        }
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ٴﹶ */
    public final void mo1163() {
    }
}
