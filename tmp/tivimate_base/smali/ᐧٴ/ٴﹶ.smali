.class public final Lᐧٴ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lᐧٴ/ٴﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᐧٴ/ٴﹶ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᐧٴ/ٴﹶ;->ﹳٴ:Lᐧٴ/ٴﹶ;

    const-string v0, "networkType"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ٴﹶ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ٴﹶ;->ʽ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lᐧٴ/ᵎⁱ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lᐧٴ/ʻٴ;

    iget-object v0, p1, Lᐧٴ/ʻٴ;->ﹳٴ:Lᐧٴ/ˉٴ;

    sget-object v1, Lᐧٴ/ٴﹶ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ٴﹶ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lᐧٴ/ʻٴ;->ⁱˊ:Lᐧٴ/ٴᵢ;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
