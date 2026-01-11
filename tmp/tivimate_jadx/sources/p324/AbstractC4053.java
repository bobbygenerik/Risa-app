package p324;

/* renamed from: ᴵי.ﹳﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4053 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ThreadLocal f15446 = new ThreadLocal();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static AbstractC4020 m8269() {
        ThreadLocal threadLocal = f15446;
        AbstractC4020 abstractC4020 = (AbstractC4020) threadLocal.get();
        if (abstractC4020 != null) {
            return abstractC4020;
        }
        C4042 c4042 = new C4042(Thread.currentThread());
        threadLocal.set(c4042);
        return c4042;
    }
}
