package p410;

import android.support.v4.media.session.AbstractC0001;
import java.util.HashMap;
import p197.AbstractC2901;
import p197.C2900;

/* renamed from: ﹳˋ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4859 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final HashMap f18203;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final HashMap f18204;

    static {
        HashMap hashMap = new HashMap();
        f18204 = hashMap;
        HashMap hashMap2 = new HashMap();
        f18203 = hashMap2;
        hashMap2.put(C4883.class, new C4884(9));
        hashMap2.put(C4882.class, new C4884(10));
        hashMap2.put(C4862.class, new C4884(11));
        C4873 c4873 = new C4873(1);
        hashMap2.put(C4867.class, c4873);
        hashMap.put(C4867.class, c4873);
        C4873 c48732 = new C4873(2);
        hashMap2.put(C4872.class, c48732);
        hashMap.put(C4872.class, c48732);
        hashMap.put(ʼˎ.class, new C4871(2));
        hashMap2.put(C4866.class, new C4884(12));
        hashMap2.put(C4876.class, new C4884(13));
        hashMap.put(ٴﹶ.class, new C4871(3));
        hashMap2.put(C4874.class, new C4884(0));
        C4873 c48733 = new C4873(0);
        hashMap2.put(C4860.class, c48733);
        hashMap.put(C4860.class, c48733);
        hashMap2.put(C4864.class, new C4884(1));
        hashMap2.put(C4868.class, new C4884(2));
        hashMap2.put(C4886.class, new C4884(3));
        hashMap2.put(C4877.class, new C4884(4));
        hashMap2.put(C4885.class, new C4884(5));
        hashMap2.put(C4869.class, new C4884(6));
        hashMap2.put(C4878.class, new C4884(7));
        hashMap2.put(C4881.class, new C4884(8));
        hashMap.put(ʽʽ.class, new C4871(0));
        hashMap.put(AbstractC4865.class, new C4871(1));
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, ﹳˋ.ˈٴ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C4868 m9668(AbstractC2901 abstractC2901) {
        abstractC2901.f10939.m6407(abstractC2901);
        C2900 c2900 = abstractC2901.f10939;
        long m6403 = c2900.m6403(abstractC2901);
        c2900.m6402(abstractC2901);
        abstractC2901.m6410();
        abstractC2901.m6410();
        abstractC2901.m6414(2);
        ?? obj = new Object();
        obj.f18211 = m6403;
        return obj;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static InterfaceC4870 m9669(Class cls) {
        InterfaceC4870 interfaceC4870 = (InterfaceC4870) f18203.get(cls);
        if (interfaceC4870 != null) {
            return interfaceC4870;
        }
        throw new IllegalArgumentException(AbstractC0001.m22(cls, "FileInformationClass not supported - "));
    }
}
