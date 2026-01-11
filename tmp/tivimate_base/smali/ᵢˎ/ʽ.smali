.class public final Lᵢˎ/ʽ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:I

.field public final synthetic ˊʻ:Lˈי/ˈ;

.field public final synthetic ᴵᵔ:Lᴵⁱ/ʼᐧ;


# direct methods
.method public constructor <init>(Lˈי/ˈ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)V
    .locals 0

    iput-object p3, p0, Lᵢˎ/ʽ;->ᴵᵔ:Lᴵⁱ/ʼᐧ;

    iput-object p4, p0, Lᵢˎ/ʽ;->ˊʻ:Lˈי/ˈ;

    invoke-direct {p0, p1, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lᵢˎ/ʽ;->ˈٴ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lᵢˎ/ʽ;->ˈٴ:I

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v2, p0, Lᵢˎ/ʽ;->ˈٴ:I

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lᵢˎ/ʽ;->ᴵᵔ:Lᴵⁱ/ʼᐧ;

    invoke-static {v1, p1}, Lˊʼ/ـˆ;->ⁱˊ(ILjava/lang/Object;)V

    iget-object v0, p0, Lᵢˎ/ʽ;->ˊʻ:Lˈי/ˈ;

    invoke-interface {p1, v0, p0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
