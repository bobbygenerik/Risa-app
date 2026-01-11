package p080;

import com.bumptech.glide.load.data.InterfaceC0218;
import java.io.File;
import java.util.List;
import p031.InterfaceC1141;
import p383.C4586;
import p383.InterfaceC4578;

/* renamed from: ʿʾ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1701 implements InterfaceC1708, InterfaceC0218 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC1706 f6947;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final List f6948;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f6949 = -1;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public volatile C4586 f6950;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public List f6951;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f6952;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1688 f6953;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public InterfaceC1141 f6954;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public File f6955;

    public C1701(List list, C1688 c1688, InterfaceC1706 interfaceC1706) {
        this.f6948 = list;
        this.f6953 = c1688;
        this.f6947 = interfaceC1706;
    }

    @Override // p080.InterfaceC1708
    public final void cancel() {
        C4586 c4586 = this.f6950;
        if (c4586 != null) {
            c4586.f17080.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0218
    /* renamed from: ʽ */
    public final void mo1107(Exception exc) {
        this.f6947.mo4617(this.f6954, exc, this.f6950.f17080, 3);
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0218
    /* renamed from: ˈ */
    public final void mo1108(Object obj) {
        this.f6947.mo4628(this.f6954, obj, this.f6950.f17080, 3, this.f6954);
    }

    @Override // p080.InterfaceC1708
    /* renamed from: ﹳٴ */
    public final boolean mo4613() {
        while (true) {
            List list = this.f6951;
            boolean z = false;
            if (list != null && this.f6952 < list.size()) {
                this.f6950 = null;
                while (!z && this.f6952 < this.f6951.size()) {
                    List list2 = this.f6951;
                    int i = this.f6952;
                    this.f6952 = i + 1;
                    InterfaceC4578 interfaceC4578 = (InterfaceC4578) list2.get(i);
                    File file = this.f6955;
                    C1688 c1688 = this.f6953;
                    this.f6950 = interfaceC4578.mo4900(file, c1688.f6862, c1688.f6872, c1688.f6855);
                    if (this.f6950 != null && this.f6953.m4606(this.f6950.f17080.mo1113()) != null) {
                        this.f6950.f17080.mo1114(this.f6953.f6861, this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.f6949 + 1;
            this.f6949 = i2;
            if (i2 >= this.f6948.size()) {
                return false;
            }
            InterfaceC1141 interfaceC1141 = (InterfaceC1141) this.f6948.get(this.f6949);
            C1688 c16882 = this.f6953;
            File mo4497 = c16882.f6866.m8106().mo4497(new C1715(interfaceC1141, c16882.f6865));
            this.f6955 = mo4497;
            if (mo4497 != null) {
                this.f6954 = interfaceC1141;
                this.f6951 = this.f6953.f6857.m1144().m1174(mo4497);
                this.f6952 = 0;
            }
        }
    }
}
