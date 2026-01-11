package j$.time.format;

import j$.time.temporal.WeekFields;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class r extends i {
    public final char g;
    public final int h;

    public r(char c, int i, int i2, int i3, int i4) {
        super(null, i2, i3, F.NOT_NEGATIVE, i4);
        this.g = c;
        this.h = i;
    }

    @Override // j$.time.format.i
    public final i d() {
        if (this.e == -1) {
            return this;
        }
        return new r(this.g, this.h, this.b, this.c, -1);
    }

    @Override // j$.time.format.i
    public final i e(int i) {
        return new r(this.g, this.h, this.b, this.c, this.e + i);
    }

    public final i f(Locale locale) {
        j$.time.temporal.s sVar;
        WeekFields of = WeekFields.of(locale);
        char c = this.g;
        if (c == 'W') {
            sVar = of.d;
        } else {
            if (c == 'Y') {
                j$.time.temporal.s sVar2 = of.f;
                int i = this.h;
                if (i == 2) {
                    return new o(sVar2, 2, 2, o.h, this.e);
                }
                return new i(sVar2, i, 19, i < 4 ? F.NORMAL : F.EXCEEDS_PAD, this.e);
            }
            if (c == 'c' || c == 'e') {
                sVar = of.c;
            } else {
                if (c != 'w') {
                    throw new IllegalStateException("unreachable");
                }
                sVar = of.e;
            }
        }
        return new i(sVar, this.b, this.c, F.NOT_NEGATIVE, this.e);
    }

    @Override // j$.time.format.i, j$.time.format.InterfaceC5432e
    public final boolean k(y yVar, StringBuilder sb) {
        return f(yVar.b.b).k(yVar, sb);
    }

    @Override // j$.time.format.i, j$.time.format.InterfaceC5432e
    public final int l(v vVar, CharSequence charSequence, int i) {
        return f(vVar.a.b).l(vVar, charSequence, i);
    }

    @Override // j$.time.format.i
    public final String toString() {
        StringBuilder sb = new StringBuilder(30);
        sb.append("Localized(");
        int i = this.h;
        char c = this.g;
        if (c != 'Y') {
            if (c == 'W') {
                sb.append("WeekOfMonth");
            } else if (c == 'c' || c == 'e') {
                sb.append("DayOfWeek");
            } else if (c == 'w') {
                sb.append("WeekOfWeekBasedYear");
            }
            sb.append(",");
            sb.append(i);
        } else if (i == 1) {
            sb.append("WeekBasedYear");
        } else if (i == 2) {
            sb.append("ReducedValue(WeekBasedYear,2,2,2000-01-01)");
        } else {
            sb.append("WeekBasedYear,");
            sb.append(i);
            sb.append(",19,");
            sb.append(i < 4 ? F.NORMAL : F.EXCEEDS_PAD);
        }
        sb.append(")");
        return sb.toString();
    }
}
