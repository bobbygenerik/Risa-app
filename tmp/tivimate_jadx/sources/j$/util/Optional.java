package j$.util;

/* loaded from: classes2.dex */
public final class Optional<T> {
    public static final Optional b = new Optional();
    public final Object a;

    public Optional() {
        this.a = null;
    }

    public Optional(Object obj) {
        this.a = Objects.requireNonNull(obj);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? b : new Optional<>(t);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Optional) {
            return Objects.equals(this.a, ((Optional) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.a);
    }

    public final String toString() {
        Object obj = this.a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
