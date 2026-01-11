package p383;

import android.text.TextUtils;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: ⁱʼ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4591 implements InterfaceC4595 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public volatile Map f17099;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Map f17100;

    public C4591(Map map) {
        this.f17100 = DesugarCollections.unmodifiableMap(map);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C4591) {
            return this.f17100.equals(((C4591) obj).f17100);
        }
        return false;
    }

    public final int hashCode() {
        return this.f17100.hashCode();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.f17100 + '}';
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashMap m9135() {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.f17100.entrySet()) {
            List list = (List) entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                String str = ((C4583) list.get(i)).f17077;
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                    if (i != list.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(sb2)) {
                hashMap.put((String) entry.getKey(), sb2);
            }
        }
        return hashMap;
    }

    @Override // p383.InterfaceC4595
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Map mo9136() {
        if (this.f17099 == null) {
            synchronized (this) {
                try {
                    if (this.f17099 == null) {
                        this.f17099 = DesugarCollections.unmodifiableMap(m9135());
                    }
                } finally {
                }
            }
        }
        return this.f17099;
    }
}
