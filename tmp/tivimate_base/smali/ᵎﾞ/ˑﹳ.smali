.class public final Lᵎﾞ/ˑﹳ;
.super Lᵎﾞ/ⁱˊ;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkMeteredCtrlr"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lᵎﾞ/ˑﹳ;->ⁱˊ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ˈ()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final ˑﹳ(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    check-cast p1, Lⁱᵎ/ˑﹳ;

    iget-boolean v0, p1, Lⁱᵎ/ˑﹳ;->ﹳٴ:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    sget-object v1, Lᵎﾞ/ˑﹳ;->ⁱˊ:Ljava/lang/String;

    const-string v2, "Metered network constraint is not supported before API 26, only checking for connected state."

    invoke-virtual {p1, v1, v2}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean p1, p1, Lⁱᵎ/ˑﹳ;->ʽ:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ﹳٴ(Lˑᵎ/ﹳᐧ;)Z
    .locals 1

    .prologue
    iget-object p1, p1, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iget p1, p1, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
