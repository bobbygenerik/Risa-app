package p322;

import android.os.Build;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;
import p240.C3231;
import p430.AbstractC5099;
import p430.AbstractC5103;
import p435.AbstractC5143;

/* renamed from: ᴵˋ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3970 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final LinkedHashSet f15304;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C3231 f15305;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public UUID f15306 = UUID.randomUUID();

    public AbstractC3970(Class cls) {
        this.f15305 = new C3231(this.f15306.toString(), (EnumC3961) null, cls.getName(), (String) null, (C3977) null, (C3977) null, 0L, 0L, 0L, (C3966) null, 0, 0, 0L, 0L, 0L, 0L, false, 0, 0, 0L, 0, 0, (String) null, (Boolean) null, 33554426);
        String[] strArr = {cls.getName()};
        LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC5103.m10040(1));
        linkedHashSet.add(strArr[0]);
        this.f15304 = linkedHashSet;
    }

    /* renamed from: ʽ */
    public abstract AbstractC3970 mo8123();

    /* renamed from: ⁱˊ */
    public abstract AbstractC3964 mo8124();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC3964 m8139() {
        AbstractC3964 mo8124 = mo8124();
        C3966 c3966 = this.f15305.f12327;
        boolean z = (Build.VERSION.SDK_INT >= 24 && c3966.m8135()) || c3966.f15292 || c3966.f15290 || c3966.f15291;
        C3231 c3231 = this.f15305;
        if (c3231.f12339) {
            if (z) {
                throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
            }
            if (c3231.f12336 > 0) {
                throw new IllegalArgumentException("Expedited jobs cannot be delayed");
            }
        }
        String str = c3231.f12326;
        if (str == null) {
            List m10102 = AbstractC5143.m10102(c3231.f12324, new String[]{"."});
            String str2 = m10102.size() == 1 ? (String) m10102.get(0) : (String) AbstractC5099.m10028(m10102);
            if (str2.length() > 127) {
                str2 = AbstractC5143.m10106(127, str2);
            }
            c3231.f12326 = str2;
        } else if (str.length() > 127) {
            this.f15305.f12326 = AbstractC5143.m10106(127, str);
        }
        UUID randomUUID = UUID.randomUUID();
        this.f15306 = randomUUID;
        String uuid = randomUUID.toString();
        C3231 c32312 = this.f15305;
        this.f15305 = new C3231(uuid, c32312.f12340, c32312.f12324, c32312.f12328, new C3977(c32312.f12332), new C3977(c32312.f12344), c32312.f12336, c32312.f12338, c32312.f12322, new C3966(c32312.f12327), c32312.f12335, c32312.f12343, c32312.f12329, c32312.f12337, c32312.f12330, c32312.f12323, c32312.f12339, c32312.f12342, c32312.f12333, c32312.f12325, c32312.f12320, c32312.f12334, c32312.f12326, c32312.f12321, 524288);
        return mo8124;
    }
}
