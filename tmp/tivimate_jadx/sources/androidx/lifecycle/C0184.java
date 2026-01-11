package androidx.lifecycle;

import android.os.Looper;
import androidx.leanback.widget.ˉˆ;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p028.C1118;
import p137.AbstractC2305;
import p307.AbstractC3740;
import p333.C4204;
import p340.C4249;
import p365.C4455;
import p365.C4459;

/* renamed from: androidx.lifecycle.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0184 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ArrayList f1073;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C4249 f1075;

    /* renamed from: ˈ, reason: contains not printable characters */
    public EnumC0199 f1076;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final WeakReference f1077;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f1078;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f1079;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f1082;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ˉˆ f1081 = new ˉˆ(2);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f1080 = true;

    /* renamed from: ʽ, reason: contains not printable characters */
    public C4459 f1074 = new C4459();

    public C0184(InterfaceC0162 interfaceC0162) {
        EnumC0199 enumC0199 = EnumC0199.f1104;
        this.f1076 = enumC0199;
        this.f1073 = new ArrayList();
        this.f1077 = new WeakReference(interfaceC0162);
        this.f1075 = new C4249(enumC0199);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m709(String str) {
        if (this.f1080) {
            C1118.m3545().f4374.getClass();
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                throw new IllegalStateException(AbstractC2305.m5378("Method ", str, " must be called on the main thread").toString());
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m710(EnumC0174 enumC0174) {
        m709("handleLifecycleEvent");
        m711(enumC0174.m702());
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m711(EnumC0199 enumC0199) {
        if (this.f1076 == enumC0199) {
            return;
        }
        InterfaceC0162 interfaceC0162 = (InterfaceC0162) this.f1077.get();
        EnumC0199 enumC01992 = this.f1076;
        EnumC0199 enumC01993 = EnumC0199.f1104;
        EnumC0199 enumC01994 = EnumC0199.f1101;
        if (enumC01992 == enumC01993 && enumC0199 == enumC01994) {
            throw new IllegalStateException(("State must be at least '" + EnumC0199.f1100 + "' to be moved to '" + enumC0199 + "' in component " + interfaceC0162).toString());
        }
        if (enumC01992 == enumC01994 && enumC01992 != enumC0199) {
            throw new IllegalStateException(("State is '" + enumC01994 + "' and cannot be moved to `" + enumC0199 + "` in component " + interfaceC0162).toString());
        }
        this.f1076 = enumC0199;
        if (this.f1078 || this.f1082 != 0) {
            this.f1079 = true;
            return;
        }
        this.f1078 = true;
        m712();
        this.f1078 = false;
        if (this.f1076 == enumC01994) {
            this.f1074 = new C4459();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
    
        r11.f1079 = false;
        r0 = r11.f1076;
        r1 = r11.f1075;
        r1.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
    
        if (r0 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
    
        r0 = p089.AbstractC1768.f7152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        r1.m8646(null, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
    
        return;
     */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m712() {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.C0184.m712():void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final EnumC0199 m713(InterfaceC0179 interfaceC0179) {
        HashMap hashMap = this.f1074.f16684;
        C4455 c4455 = hashMap.containsKey(interfaceC0179) ? ((C4455) hashMap.get(interfaceC0179)).f16676 : null;
        EnumC0199 enumC0199 = c4455 != null ? ((C0155) c4455.f16677).f1026 : null;
        ArrayList arrayList = this.f1073;
        EnumC0199 enumC01992 = arrayList.isEmpty() ? null : (EnumC0199) AbstractC3740.m7939(1, arrayList);
        EnumC0199 enumC01993 = this.f1076;
        if (enumC0199 == null || enumC0199.compareTo(enumC01993) >= 0) {
            enumC0199 = enumC01993;
        }
        return (enumC01992 == null || enumC01992.compareTo(enumC0199) >= 0) ? enumC0199 : enumC01992;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.lifecycle.ʻٴ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m714(InterfaceC0179 interfaceC0179) {
        InterfaceC0183 interfaceC0183;
        Object obj;
        InterfaceC0162 interfaceC0162;
        m709("addObserver");
        EnumC0199 enumC0199 = this.f1076;
        EnumC0199 enumC01992 = EnumC0199.f1101;
        if (enumC0199 != enumC01992) {
            enumC01992 = EnumC0199.f1104;
        }
        ?? obj2 = new Object();
        HashMap hashMap = AbstractC0156.f1028;
        boolean z = interfaceC0179 instanceof InterfaceC0183;
        boolean z2 = interfaceC0179 instanceof ʿˋ.ʽﹳ;
        Object obj3 = null;
        int i = 1;
        if (z && z2) {
            interfaceC0183 = new C0210((ʿˋ.ʽﹳ) interfaceC0179, r6, (InterfaceC0183) interfaceC0179);
        } else if (z2) {
            interfaceC0183 = new C0210((ʿˋ.ʽﹳ) interfaceC0179, r6, obj3);
        } else if (z) {
            interfaceC0183 = (InterfaceC0183) interfaceC0179;
        } else {
            Class<?> cls = interfaceC0179.getClass();
            if (AbstractC0156.m670(cls) == 2) {
                List list = (List) AbstractC0156.f1027.get(cls);
                if (list.size() == 1) {
                    AbstractC0156.m671((Constructor) list.get(0), interfaceC0179);
                    interfaceC0183 = new Object();
                } else {
                    int size = list.size();
                    InterfaceC0202[] interfaceC0202Arr = new InterfaceC0202[size];
                    for (int i2 = 0; i2 < size; i2++) {
                        AbstractC0156.m671((Constructor) list.get(i2), interfaceC0179);
                        interfaceC0202Arr[i2] = null;
                    }
                    interfaceC0183 = new C4204(i, interfaceC0202Arr);
                }
            } else {
                interfaceC0183 = new C0210(interfaceC0179);
            }
        }
        obj2.f1025 = interfaceC0183;
        obj2.f1026 = enumC01992;
        C4459 c4459 = this.f1074;
        C4455 mo9008 = c4459.mo9008(interfaceC0179);
        if (mo9008 != null) {
            obj = mo9008.f16677;
        } else {
            HashMap hashMap2 = c4459.f16684;
            C4455 c4455 = new C4455(interfaceC0179, obj2);
            c4459.f16687++;
            C4455 c44552 = c4459.f16688;
            if (c44552 == null) {
                c4459.f16686 = c4455;
                c4459.f16688 = c4455;
            } else {
                c44552.f16674 = c4455;
                c4455.f16676 = c44552;
                c4459.f16688 = c4455;
            }
            hashMap2.put(interfaceC0179, c4455);
            obj = null;
        }
        if (((C0155) obj) == null && (interfaceC0162 = (InterfaceC0162) this.f1077.get()) != null) {
            r6 = (this.f1082 != 0 || this.f1078) ? 1 : 0;
            EnumC0199 m713 = m713(interfaceC0179);
            this.f1082++;
            while (obj2.f1026.compareTo(m713) < 0 && this.f1074.f16684.containsKey(interfaceC0179)) {
                EnumC0199 enumC01993 = obj2.f1026;
                ArrayList arrayList = this.f1073;
                arrayList.add(enumC01993);
                C0188 c0188 = EnumC0174.Companion;
                EnumC0199 enumC01994 = obj2.f1026;
                c0188.getClass();
                int ordinal = enumC01994.ordinal();
                EnumC0174 enumC0174 = ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? null : EnumC0174.ON_RESUME : EnumC0174.ON_START : EnumC0174.ON_CREATE;
                if (enumC0174 == null) {
                    throw new IllegalStateException("no event up from " + obj2.f1026);
                }
                obj2.m669(interfaceC0162, enumC0174);
                arrayList.remove(arrayList.size() - 1);
                m713 = m713(interfaceC0179);
            }
            if (r6 == 0) {
                m712();
            }
            this.f1082--;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m715(InterfaceC0179 interfaceC0179) {
        m709("removeObserver");
        this.f1074.mo9007(interfaceC0179);
    }
}
