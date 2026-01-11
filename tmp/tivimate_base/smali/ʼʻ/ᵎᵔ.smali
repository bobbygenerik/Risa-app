.class public final Lʼʻ/ᵎᵔ;
.super Lʼʻ/ᵎⁱ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽʽ:Lʼʻ/ᐧﾞ;


# direct methods
.method public constructor <init>(Lʼʻ/ᐧﾞ;)V
    .locals 0

    iput-object p1, p0, Lʼʻ/ᵎᵔ;->ʽʽ:Lʼʻ/ᐧﾞ;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lʼʻ/ᵎᵔ;->ʽʽ:Lʼʻ/ᐧﾞ;

    iget v1, v0, Lʼʻ/ᐧﾞ;->ˊʻ:I

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/י;->ᵎﹶ(II)V

    iget-object v0, v0, Lʼʻ/ᐧﾞ;->ᴵᵔ:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

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

    iget-object v0, p0, Lʼʻ/ᵎᵔ;->ʽʽ:Lʼʻ/ᐧﾞ;

    iget v0, v0, Lʼʻ/ᐧﾞ;->ˊʻ:I

    return v0
.end method

.method public final ᵎﹶ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
