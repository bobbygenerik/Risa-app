package p438;

import java.util.ArrayList;
import kotlinx.serialization.MissingFieldException;
import p150.InterfaceC2417;

/* renamed from: ﹶٴ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5176 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final InterfaceC2417[] f19483 = new InterfaceC2417[0];

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final void m10159(int i, int i2, InterfaceC2417 interfaceC2417) {
        ArrayList arrayList = new ArrayList();
        int i3 = (~i) & i2;
        for (int i4 = 0; i4 < 32; i4++) {
            if ((i3 & 1) != 0) {
                arrayList.add(interfaceC2417.mo5523(i4));
            }
            i3 >>>= 1;
        }
        String mo5525 = interfaceC2417.mo5525();
        throw new MissingFieldException(arrayList, arrayList.size() == 1 ? "Field '" + ((String) arrayList.get(0)) + "' is required for type with serial name '" + mo5525 + "', but it was missing" : "Fields " + arrayList + " are required for type with serial name '" + mo5525 + "', but they were missing", null);
    }
}
