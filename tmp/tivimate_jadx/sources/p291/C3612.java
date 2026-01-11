package p291;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import p055.C1458;
import p055.C1473;
import p127.C2150;
import p305.AbstractC3712;
import p455.InterfaceC5376;

/* renamed from: ٴᴵ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3612 implements InterfaceC5376 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C2150 f14124;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f14125;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C1473 f14126;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f14127;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final List f14128;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f14129;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Uri f14130;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f14131;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long f14132;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f14133;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f14134;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C3610 f14135;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f14136;

    public C3612(long j, long j2, long j3, boolean z, long j4, long j5, long j6, long j7, C3610 c3610, C2150 c2150, C1473 c1473, Uri uri, ArrayList arrayList) {
        this.f14134 = j;
        this.f14133 = j2;
        this.f14125 = j3;
        this.f14127 = z;
        this.f14129 = j4;
        this.f14136 = j5;
        this.f14131 = j6;
        this.f14132 = j7;
        this.f14135 = c3610;
        this.f14124 = c2150;
        this.f14130 = uri;
        this.f14126 = c1473;
        this.f14128 = arrayList;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long m7573(int i) {
        long j;
        long j2;
        List list = this.f14128;
        if (i == list.size() - 1) {
            j = this.f14133;
            if (j == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            j2 = ((C3622) list.get(i)).f14175;
        } else {
            j = ((C3622) list.get(i + 1)).f14175;
            j2 = ((C3622) list.get(i)).f14175;
        }
        return j - j2;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long m7574(int i) {
        return AbstractC3712.m7757(m7573(i));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3622 m7575(int i) {
        return (C3622) this.f14128.get(i);
    }

    @Override // p455.InterfaceC5376
    /* renamed from: ﹳٴ */
    public final Object mo4029(List list) {
        long j;
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new C1458());
        ArrayList arrayList = new ArrayList();
        long j2 = 0;
        int i = 0;
        while (true) {
            if (i >= this.f14128.size()) {
                break;
            }
            if (((C1458) linkedList.peek()).f5669 != i) {
                long m7573 = m7573(i);
                if (m7573 != -9223372036854775807L) {
                    j2 += m7573;
                }
            } else {
                C3622 m7575 = m7575(i);
                List list2 = m7575.f14173;
                C1458 c1458 = (C1458) linkedList.poll();
                int i2 = c1458.f5669;
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    int i3 = c1458.f5670;
                    C3625 c3625 = (C3625) list2.get(i3);
                    List list3 = c3625.f14183;
                    ArrayList arrayList3 = new ArrayList();
                    do {
                        arrayList3.add((AbstractC3615) list3.get(c1458.f5668));
                        c1458 = (C1458) linkedList.poll();
                        if (c1458.f5669 != i2) {
                            break;
                        }
                    } while (c1458.f5670 == i3);
                    j = j2;
                    arrayList2.add(new C3625(c3625.f14187, c3625.f14186, arrayList3, c3625.f14184, c3625.f14185, c3625.f14188));
                    if (c1458.f5669 != i2) {
                        break;
                    }
                    j2 = j;
                }
                linkedList.addFirst(c1458);
                arrayList.add(new C3622(m7575.f14176, m7575.f14175 - j, arrayList2, m7575.f14174));
                j2 = j;
            }
            i++;
        }
        long j3 = j2;
        long j4 = this.f14133;
        return new C3612(this.f14134, j4 != -9223372036854775807L ? j4 - j3 : -9223372036854775807L, this.f14125, this.f14127, this.f14129, this.f14136, this.f14131, this.f14132, this.f14135, this.f14124, this.f14126, this.f14130, arrayList);
    }
}
