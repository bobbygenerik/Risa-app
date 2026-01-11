package p080;

import com.bumptech.glide.load.data.InterfaceC0222;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p027.C1090;
import p031.C1144;
import p087.AbstractC1751;
import p238.InterfaceC3203;

/* renamed from: ʿʾ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1694 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f6895;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final List f6896;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3203 f6897;

    public C1694(Class cls, Class cls2, Class cls3, List list, InterfaceC3203 interfaceC3203) {
        this.f6897 = interfaceC3203;
        if (list.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.f6896 = list;
        this.f6895 = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f6896.toArray()) + '}';
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC1710 m4614(int i, int i2, InterfaceC0222 interfaceC0222, C1090 c1090, C1144 c1144) {
        InterfaceC3203 interfaceC3203 = this.f6897;
        List list = (List) interfaceC3203.mo3016();
        AbstractC1751.m4711(list, "Argument must not be null");
        try {
            List list2 = this.f6896;
            int size = list2.size();
            InterfaceC1710 interfaceC1710 = null;
            for (int i3 = 0; i3 < size; i3++) {
                try {
                    interfaceC1710 = ((C1704) list2.get(i3)).m4643(i, i2, interfaceC0222, c1090, c1144);
                } catch (GlideException e) {
                    list.add(e);
                }
                if (interfaceC1710 != null) {
                    break;
                }
            }
            if (interfaceC1710 != null) {
                return interfaceC1710;
            }
            throw new GlideException(this.f6895, new ArrayList(list));
        } finally {
            interfaceC3203.mo3014(list);
        }
    }
}
