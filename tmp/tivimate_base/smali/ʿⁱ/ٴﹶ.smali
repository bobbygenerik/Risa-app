.class public final Lʿⁱ/ٴﹶ;
.super Lᴵי/ˏי;
.source "SourceFile"


# static fields
.field public static final ᴵˊ:Lʿⁱ/ٴﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʿⁱ/ٴﹶ;

    invoke-direct {v0}, Lᴵי/ˏי;-><init>()V

    sput-object v0, Lʿⁱ/ٴﹶ;->ᴵˊ:Lʿⁱ/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method

.method public final ʽᵔ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p1, Lʿⁱ/ˈ;->ʽʽ:Lʿⁱ/ˈ;

    const/4 v0, 0x1

    iget-object p1, p1, Lʿⁱ/ᵎﹶ;->ᴵˊ:Lʿⁱ/ⁱˊ;

    invoke-virtual {p1, p2, v0, v0}, Lʿⁱ/ⁱˊ;->ᵎﹶ(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method public final י(I)Lᴵי/ˏי;
    .locals 1

    .prologue
    invoke-static {p1}, Lˊʽ/ⁱˊ;->ﹳٴ(I)V

    sget v0, Lʿⁱ/ˆʾ;->ˈ:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lᴵי/ˏי;->י(I)Lᴵי/ˏי;

    move-result-object p1

    return-object p1
.end method

.method public final ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 2

    sget-object p1, Lʿⁱ/ˈ;->ʽʽ:Lʿⁱ/ˈ;

    const/4 v0, 0x1

    iget-object p1, p1, Lʿⁱ/ᵎﹶ;->ᴵˊ:Lʿⁱ/ⁱˊ;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lʿⁱ/ⁱˊ;->ᵎﹶ(Ljava/lang/Runnable;ZZ)V

    return-void
.end method
