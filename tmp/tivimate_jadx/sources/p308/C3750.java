package p308;

import android.support.v4.media.session.AbstractC0001;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.BufferedReader;
import java.io.IOException;

/* renamed from: ᐧٴ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3750 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f14605;

    public C3750(long j) {
        this.f14605 = j;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3750 m7952(BufferedReader bufferedReader) {
        JsonReader jsonReader = new JsonReader(bufferedReader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? new C3750(Long.parseLong(jsonReader.nextString())) : new C3750(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C3750) && this.f14605 == ((C3750) obj).f14605;
    }

    public final int hashCode() {
        long j = this.f14605;
        return ((int) (j ^ (j >>> 32))) ^ 1000003;
    }

    public final String toString() {
        return AbstractC0001.m8(new StringBuilder("LogResponse{nextRequestWaitMillis="), this.f14605, "}");
    }
}
