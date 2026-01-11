package p366;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.data.C0215;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import p031.C1144;
import p031.InterfaceC1139;
import p080.InterfaceC1710;
import p087.AbstractC1751;
import p257.C3397;
import p257.InterfaceC3396;
import p376.C4536;
import ˑי.ʽ;
import ᵢ.ﹳٴ;

/* renamed from: ᵔﹶ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4478 implements InterfaceC1139 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f16778;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f16779;

    public /* synthetic */ C4478(int i, Object obj) {
        this.f16779 = i;
        this.f16778 = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [ᵔﹶ.ـˆ, java.lang.Object, ˑי.ʽ] */
    @Override // p031.InterfaceC1139
    /* renamed from: ⁱˊ */
    public final InterfaceC1710 mo3568(Object obj, int i, int i2, C1144 c1144) {
        switch (this.f16779) {
            case 0:
                ByteBuffer byteBuffer = (ByteBuffer) obj;
                C4464 c4464 = (C4464) this.f16778;
                return c4464.m9023(new ﹳٴ(byteBuffer, c4464.f16712, c4464.f16711, 19, false), i, i2, c1144, C4464.f16706);
            case 1:
                C4464 c44642 = (C4464) this.f16778;
                ArrayList arrayList = c44642.f16712;
                C3397 c3397 = c44642.f16711;
                ?? obj2 = new Object();
                AbstractC1751.m4711(c3397, "Argument must not be null");
                ((ʽ) obj2).ʾˋ = c3397;
                AbstractC1751.m4711(arrayList, "Argument must not be null");
                ((ʽ) obj2).ᴵˊ = arrayList;
                ((ʽ) obj2).ʽʽ = new C0215((ParcelFileDescriptor) obj);
                return c44642.m9023(obj2, i, i2, c1144, C4464.f16706);
            default:
                return C4465.m9024(((C4536) obj).m9112(), (InterfaceC3396) this.f16778);
        }
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ﹳٴ */
    public final boolean mo3569(Object obj, C1144 c1144) {
        switch (this.f16779) {
            case 0:
                ((C4464) this.f16778).getClass();
                return true;
            case 1:
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                String str = Build.MANUFACTURER;
                return (!("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= 536870912) && !"robolectric".equals(Build.FINGERPRINT);
            default:
                return true;
        }
    }
}
