package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import p267.AbstractC3465;
import p267.C3464;
import p267.InterfaceC3463;

/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(AbstractC3465 abstractC3465) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        InterfaceC3463 interfaceC3463 = remoteActionCompat.f300;
        boolean z = true;
        if (abstractC3465.mo7373(1)) {
            interfaceC3463 = abstractC3465.m7380();
        }
        remoteActionCompat.f300 = (IconCompat) interfaceC3463;
        CharSequence charSequence = remoteActionCompat.f299;
        if (abstractC3465.mo7373(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((C3464) abstractC3465).f13611);
        }
        remoteActionCompat.f299 = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f296;
        if (abstractC3465.mo7373(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((C3464) abstractC3465).f13611);
        }
        remoteActionCompat.f296 = charSequence2;
        remoteActionCompat.f297 = (PendingIntent) abstractC3465.m7379(remoteActionCompat.f297, 4);
        boolean z2 = remoteActionCompat.f298;
        if (abstractC3465.mo7373(5)) {
            z2 = ((C3464) abstractC3465).f13611.readInt() != 0;
        }
        remoteActionCompat.f298 = z2;
        boolean z3 = remoteActionCompat.f301;
        if (!abstractC3465.mo7373(6)) {
            z = z3;
        } else if (((C3464) abstractC3465).f13611.readInt() == 0) {
            z = false;
        }
        remoteActionCompat.f301 = z;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, AbstractC3465 abstractC3465) {
        abstractC3465.getClass();
        IconCompat iconCompat = remoteActionCompat.f300;
        abstractC3465.mo7372(1);
        abstractC3465.m7378(iconCompat);
        CharSequence charSequence = remoteActionCompat.f299;
        abstractC3465.mo7372(2);
        Parcel parcel = ((C3464) abstractC3465).f13611;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.f296;
        abstractC3465.mo7372(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.f297;
        abstractC3465.mo7372(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z = remoteActionCompat.f298;
        abstractC3465.mo7372(5);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = remoteActionCompat.f301;
        abstractC3465.mo7372(6);
        parcel.writeInt(z2 ? 1 : 0);
    }
}
