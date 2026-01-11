package p017;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: ʼʻ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0965 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public transient Map f3918;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public transient Set f3919;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public transient Collection f3920;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0965) {
            return mo3247().equals(((AbstractC0965) obj).mo3247());
        }
        return false;
    }

    public final int hashCode() {
        return mo3247().hashCode();
    }

    public final String toString() {
        return mo3247().toString();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean mo3246(Object obj) {
        Iterator it = mo3247().values().iterator();
        while (it.hasNext()) {
            if (((Collection) it.next()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public abstract Map mo3247();
}
