.class public final Lcom/google/android/gms/internal/play_billing/ᵎʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/ⁱי;


# static fields
.field public static final ⁱˊ:Lcom/google/android/gms/internal/play_billing/ʾˊ;


# instance fields
.field public final ﹳٴ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʾˊ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʾˊ;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ʾˊ;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵎʿ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ʽ:Lcom/google/android/gms/internal/play_billing/ⁱᴵ;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/play_billing/ⁱי;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ʾˊ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ʾˊ;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ʾˊ;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ᵎʿ;-><init>([Lcom/google/android/gms/internal/play_billing/ⁱי;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ⁱˉ;->ﹳٴ:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ٴﹳ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ⁱˉ;->ﹳٴ:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵎʿ;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/play_billing/ⁱי;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ʽ(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/ˋˊ;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ـﹶ;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵎʿ;

    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/play_billing/ˋˊ;->ˑﹳ(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/ᵎʿ;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˈⁱ(II)V

    return-void
.end method

.method public ˈ(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/ˋˊ;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ـﹶ;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ٴﹳ;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/ـﹶ;->ⁱˊ(Lcom/google/android/gms/internal/play_billing/ˋˊ;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ˉـ(I)V

    iget-object p1, v0, Lcom/google/android/gms/internal/play_billing/ٴﹳ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵎʿ;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/play_billing/ˋˊ;->ˑﹳ(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/ᵎʿ;)V

    return-void
.end method

.method public ⁱˊ(Ljava/lang/Class;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/gms/internal/play_billing/ⁱי;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/play_billing/ⁱי;->ⁱˊ(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/ʽˑ;
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ᵎʿ;->ﹳٴ:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/play_billing/ⁱי;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/play_billing/ⁱי;->ⁱˊ(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/play_billing/ⁱי;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/ʽˑ;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No factory is available for message type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
