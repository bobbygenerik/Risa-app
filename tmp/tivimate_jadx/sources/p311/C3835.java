package p311;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import p013.C0907;
import p208.AbstractC2944;
import p208.AbstractC2960;
import p208.C2948;

/* renamed from: ᐧᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C3835 implements InterfaceC3837 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f14844;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C3835 f14842 = new C3835(0);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C3835 f14838 = new C3835(1);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C3835 f14839 = new C3835(2);

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C3835 f14843 = new C3835(3);

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final C3835 f14840 = new C3835(4);

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final C3835 f14841 = new C3835(5);

    public /* synthetic */ C3835(int i) {
        this.f14844 = i;
    }

    /* renamed from: ʽ */
    public String mo7981(int i, Method method) {
        return "parameter #" + (i + 1);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    @Override // p311.InterfaceC3837
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public Object mo8000(Object obj) {
        switch (this.f14844) {
            case 0:
                return obj.toString();
            case 1:
                AbstractC2960 abstractC2960 = (AbstractC2960) obj;
                try {
                    ?? obj2 = new Object();
                    abstractC2960.mo4067().mo5809(obj2);
                    C2948 c2948 = new C2948(abstractC2960.mo4068(), abstractC2960.mo4066(), obj2);
                    abstractC2960.close();
                    return c2948;
                } catch (Throwable th) {
                    abstractC2960.close();
                    throw th;
                }
            case 2:
                return (AbstractC2944) obj;
            case 3:
                return (AbstractC2960) obj;
            case 4:
                ((AbstractC2960) obj).close();
                return C0907.f3832;
            default:
                ((AbstractC2960) obj).close();
                return null;
        }
    }

    /* renamed from: ˈ */
    public Object mo7982(Method method, Class cls, Object obj, Object[] objArr) {
        throw new AssertionError();
    }

    /* renamed from: ˑﹳ */
    public boolean mo7983(Method method) {
        return false;
    }

    /* renamed from: ⁱˊ */
    public List mo7956() {
        return Collections.EMPTY_LIST;
    }

    /* renamed from: ﹳٴ */
    public List mo7957(Executor executor) {
        return Collections.singletonList(new C3806(executor));
    }
}
