.class public final Lˈˋ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/ʼᐧ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ʼᐧ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ʼᐧ;->ﹳٴ:Lˈˋ/ʼᐧ;

    const-string v0, "name"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼᐧ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "importance"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼᐧ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "frames"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼᐧ;->ˈ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lˈˋ/ⁱˉ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ˈⁱ;

    iget-object v0, p1, Lˈˋ/ˈⁱ;->ﹳٴ:Ljava/lang/String;

    sget-object v1, Lˈˋ/ʼᐧ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼᐧ;->ʽ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lˈˋ/ˈⁱ;->ⁱˊ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼᐧ;->ˈ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lˈˋ/ˈⁱ;->ʽ:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
