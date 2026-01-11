package p099;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.Writer;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p085.C1734;
import p085.InterfaceC1731;
import p085.InterfaceC1732;
import p085.InterfaceC1733;
import p085.InterfaceC1736;

/* renamed from: ˆˉ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1903 implements InterfaceC1732, InterfaceC1736 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Map f7613;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Map f7614;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC1731 f7615;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final JsonWriter f7616;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean f7617 = true;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f7618;

    public C1903(Writer writer, HashMap hashMap, HashMap hashMap2, C1905 c1905, boolean z) {
        this.f7616 = new JsonWriter(writer);
        this.f7613 = hashMap;
        this.f7614 = hashMap2;
        this.f7615 = c1905;
        this.f7618 = z;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C1903 m4850(Object obj, String str) {
        boolean z = this.f7618;
        JsonWriter jsonWriter = this.f7616;
        if (z) {
            if (obj == null) {
                return this;
            }
            m4851();
            jsonWriter.name(str);
            m4852(obj);
            return this;
        }
        m4851();
        jsonWriter.name(str);
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        m4852(obj);
        return this;
    }

    @Override // p085.InterfaceC1732
    /* renamed from: ʽ */
    public final InterfaceC1732 mo4676(C1734 c1734, double d) {
        String str = c1734.f7086;
        m4851();
        JsonWriter jsonWriter = this.f7616;
        jsonWriter.name(str);
        m4851();
        jsonWriter.value(d);
        return this;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m4851() {
        if (!this.f7617) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
    }

    @Override // p085.InterfaceC1736
    /* renamed from: ˈ */
    public final InterfaceC1736 mo4682(String str) {
        m4851();
        this.f7616.value(str);
        return this;
    }

    @Override // p085.InterfaceC1736
    /* renamed from: ˑﹳ */
    public final InterfaceC1736 mo4683(boolean z) {
        m4851();
        this.f7616.value(z);
        return this;
    }

    @Override // p085.InterfaceC1732
    /* renamed from: ᵎﹶ */
    public final InterfaceC1732 mo4677(C1734 c1734, boolean z) {
        String str = c1734.f7086;
        m4851();
        JsonWriter jsonWriter = this.f7616;
        jsonWriter.name(str);
        m4851();
        jsonWriter.value(z);
        return this;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C1903 m4852(Object obj) {
        JsonWriter jsonWriter = this.f7616;
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return this;
        }
        int i = 0;
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                jsonWriter.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    m4852(it.next());
                }
                jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                jsonWriter.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        m4850(entry.getValue(), (String) key);
                    } catch (ClassCastException e) {
                        throw new RuntimeException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                    }
                }
                jsonWriter.endObject();
                return this;
            }
            InterfaceC1731 interfaceC1731 = (InterfaceC1731) this.f7613.get(obj.getClass());
            if (interfaceC1731 != null) {
                jsonWriter.beginObject();
                interfaceC1731.mo4342(obj, this);
                jsonWriter.endObject();
                return this;
            }
            InterfaceC1733 interfaceC1733 = (InterfaceC1733) this.f7614.get(obj.getClass());
            if (interfaceC1733 != null) {
                interfaceC1733.mo4342(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                jsonWriter.beginObject();
                this.f7615.mo4342(obj, this);
                jsonWriter.endObject();
                return this;
            }
            if (obj instanceof InterfaceC1906) {
                int mo4345 = ((InterfaceC1906) obj).mo4345();
                m4851();
                jsonWriter.value(mo4345);
                return this;
            }
            String name = ((Enum) obj).name();
            m4851();
            jsonWriter.value(name);
            return this;
        }
        if (obj instanceof byte[]) {
            m4851();
            jsonWriter.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        jsonWriter.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i < length) {
                jsonWriter.value(r7[i]);
                i++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i < length2) {
                long j = jArr[i];
                m4851();
                jsonWriter.value(j);
                i++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i < length3) {
                jsonWriter.value(dArr[i]);
                i++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i < length4) {
                jsonWriter.value(zArr[i]);
                i++;
            }
        } else if (obj instanceof Number[]) {
            Number[] numberArr = (Number[]) obj;
            int length5 = numberArr.length;
            while (i < length5) {
                m4852(numberArr[i]);
                i++;
            }
        } else {
            Object[] objArr = (Object[]) obj;
            int length6 = objArr.length;
            while (i < length6) {
                m4852(objArr[i]);
                i++;
            }
        }
        jsonWriter.endArray();
        return this;
    }

    @Override // p085.InterfaceC1732
    /* renamed from: ⁱˊ */
    public final InterfaceC1732 mo4678(C1734 c1734, long j) {
        String str = c1734.f7086;
        m4851();
        JsonWriter jsonWriter = this.f7616;
        jsonWriter.name(str);
        m4851();
        jsonWriter.value(j);
        return this;
    }

    @Override // p085.InterfaceC1732
    /* renamed from: ﹳٴ */
    public final InterfaceC1732 mo4679(C1734 c1734, int i) {
        String str = c1734.f7086;
        m4851();
        JsonWriter jsonWriter = this.f7616;
        jsonWriter.name(str);
        m4851();
        jsonWriter.value(i);
        return this;
    }

    @Override // p085.InterfaceC1732
    /* renamed from: ﾞᴵ */
    public final InterfaceC1732 mo4680(C1734 c1734, Object obj) {
        m4850(obj, c1734.f7086);
        return this;
    }
}
