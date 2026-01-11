.class public final Lᵢˎ/ⁱˊ;
.super Lᴵʾ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽʽ:Lᴵⁱ/ʼᐧ;

.field public final synthetic ˈٴ:Lˈי/ˈ;

.field public ᴵˊ:I


# direct methods
.method public constructor <init>(Lˈי/ˈ;Lˈי/ˈ;Lᴵⁱ/ʼᐧ;)V
    .locals 0

    iput-object p3, p0, Lᵢˎ/ⁱˊ;->ʽʽ:Lᴵⁱ/ʼᐧ;

    iput-object p2, p0, Lᵢˎ/ⁱˊ;->ˈٴ:Lˈי/ˈ;

    invoke-direct {p0, p1}, Lᴵʾ/ᵎﹶ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lᵢˎ/ⁱˊ;->ᴵˊ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lᵢˎ/ⁱˊ;->ᴵˊ:I

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v2, p0, Lᵢˎ/ⁱˊ;->ᴵˊ:I

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lᵢˎ/ⁱˊ;->ʽʽ:Lᴵⁱ/ʼᐧ;

    invoke-static {v1, p1}, Lˊʼ/ـˆ;->ⁱˊ(ILjava/lang/Object;)V

    iget-object v0, p0, Lᵢˎ/ⁱˊ;->ˈٴ:Lˈי/ˈ;

    invoke-interface {p1, v0, p0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
