.class public final Lcom/google/android/gms/internal/play_billing/ᵢˏ;
.super Lcom/google/android/gms/internal/play_billing/יـ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽʽ:Lcom/google/android/gms/internal/play_billing/ʾˋ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ʾˋ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ᵢˏ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ʾˋ;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᵢˏ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ʾˋ;

    iget v1, v0, Lcom/google/android/gms/internal/play_billing/ʾˋ;->ᴵᵔ:I

    invoke-static {p1, v1}, Lcom/bumptech/glide/ˈ;->ᵔי(II)V

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʾˋ;->ˈٴ:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᵢˏ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ʾˋ;

    iget v0, v0, Lcom/google/android/gms/internal/play_billing/ʾˋ;->ᴵᵔ:I

    return v0
.end method

.method public final ﾞᴵ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
