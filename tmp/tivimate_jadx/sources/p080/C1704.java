package p080;

import android.util.Log;
import com.bumptech.glide.load.data.InterfaceC0222;
import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p031.C1144;
import p031.InterfaceC1139;
import p238.InterfaceC3203;
import p444.InterfaceC5202;
import ᵢ.ﹳٴ;

/* renamed from: ʿʾ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1704 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC5202 f6965;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC3203 f6966;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f6967;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final List f6968;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class f6969;

    public C1704(Class cls, Class cls2, Class cls3, List list, InterfaceC5202 interfaceC5202, ﹳٴ r6) {
        this.f6969 = cls;
        this.f6968 = list;
        this.f6965 = interfaceC5202;
        this.f6966 = r6;
        this.f6967 = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f6969 + ", decoders=" + this.f6968 + ", transcoder=" + this.f6965 + '}';
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1710 m4642(InterfaceC0222 interfaceC0222, int i, int i2, C1144 c1144, List list) {
        List list2 = this.f6968;
        int size = list2.size();
        InterfaceC1710 interfaceC1710 = null;
        for (int i3 = 0; i3 < size; i3++) {
            InterfaceC1139 interfaceC1139 = (InterfaceC1139) list2.get(i3);
            try {
                if (interfaceC1139.mo3569(interfaceC0222.mo1106(), c1144)) {
                    interfaceC1710 = interfaceC1139.mo3568(interfaceC0222.mo1106(), i, i2, c1144);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    String str = "Failed to decode data for " + interfaceC1139;
                }
                list.add(e);
            }
            if (interfaceC1710 != null) {
                break;
            }
        }
        if (interfaceC1710 != null) {
            return interfaceC1710;
        }
        throw new GlideException(this.f6967, new ArrayList(list));
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b7, code lost:
    
        if (r0 == 3) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bc, code lost:
    
        if (r2 != 2) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b9, code lost:
    
        if (r0 == 1) goto L35;
     */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p080.InterfaceC1710 m4643(int r17, int r18, com.bumptech.glide.load.data.InterfaceC0222 r19, p027.C1090 r20, p031.C1144 r21) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p080.C1704.m4643(int, int, com.bumptech.glide.load.data.ᵎﹶ, ʼٴ.ʾᵎ, ʼᵔ.ᵔᵢ):ʿʾ.ᵢˏ");
    }
}
