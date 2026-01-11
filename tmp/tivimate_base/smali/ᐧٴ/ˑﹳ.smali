.class public final Lᐧٴ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lᐧٴ/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᐧٴ/ˑﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᐧٴ/ˑﹳ;->ﹳٴ:Lᐧٴ/ˑﹳ;

    const-string v0, "privacyContext"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ˑﹳ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "productIdOrigin"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lᐧٴ/ˑﹳ;->ʽ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lᐧٴ/ʾˋ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lᐧٴ/ˉˆ;

    iget-object p1, p1, Lᐧٴ/ˉˆ;->ﹳٴ:Lᐧٴ/ﹳᐧ;

    sget-object v0, Lᐧٴ/ˑﹳ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object p1, Lᐧٴ/ˑﹳ;->ʽ:Lʿˑ/ⁱˊ;

    sget-object v0, Lᐧٴ/ᵢˏ;->ʾˋ:Lᐧٴ/ᵢˏ;

    invoke-interface {p2, p1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
