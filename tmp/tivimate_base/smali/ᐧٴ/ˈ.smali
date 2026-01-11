.class public final Lᐧٴ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lᐧٴ/ˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᐧٴ/ˈ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᐧٴ/ˈ;->ﹳٴ:Lᐧٴ/ˈ;

    const-string v0, "clientType"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ˈ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "androidClientInfo"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ˈ;->ʽ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lᐧٴ/ʼʼ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lᐧٴ/ᵔʾ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lᐧٴ/ʾᵎ;->ʾˋ:Lᐧٴ/ʾᵎ;

    sget-object v1, Lᐧٴ/ˈ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lᐧٴ/ˈ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lᐧٴ/ᵔʾ;->ﹳٴ:Lᐧٴ/ﾞʻ;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
