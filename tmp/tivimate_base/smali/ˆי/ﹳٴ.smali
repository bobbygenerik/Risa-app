.class public final Lˆי/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˆי/ﹳٴ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˆי/ﹳٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˆי/ﹳٴ;->ﹳٴ:Lˆי/ﹳٴ;

    const-string v0, "rolloutId"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˆי/ﹳٴ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "parameterKey"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˆי/ﹳٴ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "parameterValue"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˆי/ﹳٴ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "variantId"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˆי/ﹳٴ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "templateVersion"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˆי/ﹳٴ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lˆי/ᵔʾ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˆי/ⁱˊ;

    iget-object v0, p1, Lˆי/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    sget-object v1, Lˆי/ﹳٴ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˆי/ﹳٴ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˆי/ⁱˊ;->ʽ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˆי/ﹳٴ;->ˈ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˆי/ⁱˊ;->ˈ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˆי/ﹳٴ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˆי/ⁱˊ;->ˑﹳ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˆי/ﹳٴ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lˆי/ⁱˊ;->ﾞᴵ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    return-void
.end method
