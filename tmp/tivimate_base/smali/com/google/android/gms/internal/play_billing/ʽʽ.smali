.class public final Lcom/google/android/gms/internal/play_billing/ʽʽ;
.super Lcom/google/android/gms/internal/play_billing/יـ;
.source "SourceFile"


# instance fields
.field public final transient ʽʽ:[Ljava/lang/Object;

.field public final transient ˈٴ:I

.field public final transient ᴵᵔ:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ʽʽ;->ʽʽ:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/ʽʽ;->ˈٴ:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/ʽʽ;->ᴵᵔ:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ʽʽ;->ᴵᵔ:I

    invoke-static {p1, v0}, Lcom/bumptech/glide/ˈ;->ᵔי(II)V

    add-int/2addr p1, p1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ʽʽ;->ˈٴ:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʽʽ;->ʽʽ:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ʽʽ;->ᴵᵔ:I

    return v0
.end method

.method public final ﾞᴵ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
