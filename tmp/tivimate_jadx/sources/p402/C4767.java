package p402;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p004.C0812;
import p033.C1182;
import p137.AbstractC2305;
import p261.C3405;
import p261.C3406;
import p261.C3407;
import p288.AbstractC3596;
import p288.C3594;
import p332.AbstractC4197;
import p332.AbstractC4200;
import p384.C4603;
import ʽⁱ.ᵎﹶ;
import ـˎ.ˈ;

/* renamed from: ﹳʻ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4767 extends AbstractC4771 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f18002 = 1;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public char[] f18003;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public AbstractC3596 f18004;

    public /* synthetic */ C4767(C3406 c3406, ˈ r3, C4603 c4603) {
        super(c3406, r3, c4603);
    }

    public C4767(C3406 c3406, char[] cArr, ˈ r4, C4603 c4603) {
        super(c3406, r4, c4603);
        this.f18003 = cArr;
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public C3594 m9539(C3407 c3407) {
        ArrayList arrayList;
        C3406 c3406 = this.f18010;
        this.f18004 = AbstractC4200.m8610(c3406);
        C1182 c1182 = c3406.f13356;
        C3405 c3405 = (c1182 == null || (arrayList = c1182.f4592) == null || arrayList.size() == 0) ? null : (C3405) c3406.f13356.f4592.get(0);
        if (c3405 != null) {
            this.f18004.mo7555(c3405);
        }
        return new C3594(this.f18004, this.f18003, c3407);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final void m9540(ᵎﹶ r13, C0812 c0812) {
        List<C3405> list;
        C3594 c3594;
        switch (this.f18002) {
            case 0:
                C4766 c4766 = (C4766) r13;
                C3407 c3407 = (C3407) ((ᵎﹶ) c4766).ʾˋ;
                try {
                    C3594 m9539 = m9539(c3407);
                    try {
                        ArrayList arrayList = this.f18010.f13356.f4592;
                        int size = arrayList.size();
                        int i = 0;
                        while (i < size) {
                            int i2 = i + 1;
                            C3405 c3405 = (C3405) arrayList.get(i);
                            if (c3405.f13380.startsWith("__MACOSX")) {
                                c0812.m2952(c3405.f13379);
                            } else {
                                this.f18004.mo7555(c3405);
                                m9546(m9539, c3405, c4766.f18001, null, c0812, new byte[c3407.f13360]);
                                ٴᴵ();
                            }
                            i = i2;
                        }
                        m9539.close();
                        AbstractC3596 abstractC3596 = this.f18004;
                        if (abstractC3596 != null) {
                            abstractC3596.close();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        try {
                            m9539.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    AbstractC3596 abstractC35962 = this.f18004;
                    if (abstractC35962 != null) {
                        abstractC35962.close();
                    }
                    throw th3;
                }
            default:
                C4772 c4772 = (C4772) r13;
                String str = c4772.f18011;
                C3407 c34072 = (C3407) ((ᵎﹶ) c4772).ʾˋ;
                boolean m8594 = AbstractC4197.m8594(str);
                C3406 c3406 = this.f18010;
                if (m8594) {
                    ArrayList arrayList2 = c3406.f13356.f4592;
                    ArrayList arrayList3 = new ArrayList();
                    int size2 = arrayList2.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        Object obj = arrayList2.get(i3);
                        i3++;
                        C3405 c34052 = (C3405) obj;
                        if (c34052.f13380.startsWith(str)) {
                            arrayList3.add(c34052);
                        }
                    }
                    list = arrayList3;
                } else {
                    C3405 c34053 = ʽٴ.ˈ.ﾞʻ(c3406, str);
                    if (c34053 == null) {
                        throw new IOException(AbstractC2305.m5378("No file found with name ", str, " in zip file"));
                    }
                    list = Collections.singletonList(c34053);
                }
                try {
                    this.f18004 = AbstractC4200.m8610(this.f18010);
                    C3594 c35942 = new C3594(this.f18004, this.f18003, c34072);
                    try {
                        byte[] bArr = new byte[c34072.f13360];
                        for (C3405 c34054 : list) {
                            this.f18004.mo7555(c34054);
                            String str2 = c4772.f18012;
                            if (AbstractC4200.m8608(str2) && AbstractC4197.m8594(str)) {
                                str2 = c34054.f13380.replaceFirst(str, str2.concat(str2.endsWith("/") ? "" : "/"));
                            }
                            String str3 = str2;
                            c3594 = c35942;
                            try {
                                m9546(c3594, c34054, c4772.f18013, str3, c0812, bArr);
                                c35942 = c3594;
                            } catch (Throwable th4) {
                                th = th4;
                                Throwable th5 = th;
                                try {
                                    c3594.close();
                                    throw th5;
                                } catch (Throwable th6) {
                                    th5.addSuppressed(th6);
                                    throw th5;
                                }
                            }
                        }
                        c35942.close();
                        AbstractC3596 abstractC35963 = this.f18004;
                        if (abstractC35963 != null) {
                            abstractC35963.close();
                            return;
                        }
                        return;
                    } catch (Throwable th7) {
                        th = th7;
                        c3594 = c35942;
                    }
                } catch (Throwable th8) {
                    AbstractC3596 abstractC35964 = this.f18004;
                    if (abstractC35964 != null) {
                        abstractC35964.close();
                    }
                    throw th8;
                }
                break;
        }
    }
}
