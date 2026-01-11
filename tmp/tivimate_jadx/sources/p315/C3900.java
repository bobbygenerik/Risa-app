package p315;

import java.util.Map;
import p152.AbstractC2452;
import p329.InterfaceC4106;

/* renamed from: ᴵʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3900 extends AbstractC2452 implements InterfaceC4106 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C3900 f15164 = new AbstractC2452(1);

    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        String valueOf;
        Map.Entry entry = (Map.Entry) obj;
        Object value = entry.getValue();
        if (value instanceof byte[]) {
            StringBuilder sb = new StringBuilder();
            sb.append((CharSequence) "[");
            int i = 0;
            for (byte b : (byte[]) value) {
                i++;
                if (i > 1) {
                    sb.append((CharSequence) ", ");
                }
                sb.append((CharSequence) String.valueOf((int) b));
            }
            sb.append((CharSequence) "]");
            valueOf = sb.toString();
        } else {
            valueOf = String.valueOf(entry.getValue());
        }
        return "  " + ((C3896) entry.getKey()).f15159 + " = " + valueOf;
    }
}
