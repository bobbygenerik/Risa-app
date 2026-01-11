.class public final Lﹶʽ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final ʾˋ:Z

.field public final ᴵˊ:Z


# direct methods
.method public constructor <init>(Lʽⁱ/ﹳᐧ;I)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lʽⁱ/ﹳᐧ;->ˑﹳ:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lﹶʽ/ᵔᵢ;->ʾˋ:Z

    invoke-static {p2, v1}, Lᐧـ/ˈ;->ᵔᵢ(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lﹶʽ/ᵔᵢ;->ᴵˊ:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lﹶʽ/ᵔᵢ;

    iget-boolean v0, p0, Lﹶʽ/ᵔᵢ;->ᴵˊ:Z

    iget-boolean v1, p1, Lﹶʽ/ᵔᵢ;->ᴵˊ:Z

    sget-object v2, Lʼʻ/ᵢˏ;->ﹳٴ:Lʼʻ/ʾᵎ;

    invoke-virtual {v2, v0, v1}, Lʼʻ/ʾᵎ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object v0

    iget-boolean v1, p0, Lﹶʽ/ᵔᵢ;->ʾˋ:Z

    iget-boolean p1, p1, Lﹶʽ/ᵔᵢ;->ʾˋ:Z

    invoke-virtual {v0, v1, p1}, Lʼʻ/ᵢˏ;->ʽ(ZZ)Lʼʻ/ᵢˏ;

    move-result-object p1

    invoke-virtual {p1}, Lʼʻ/ᵢˏ;->ˑﹳ()I

    move-result p1

    return p1
.end method
