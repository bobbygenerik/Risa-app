.class public final Lˈˋ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʼˎ:Lʿˑ/ⁱˊ;

.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ˆʾ:Lʿˑ/ⁱˊ;

.field public static final ˈ:Lʿˑ/ⁱˊ;

.field public static final ˑﹳ:Lʿˑ/ⁱˊ;

.field public static final ᵎﹶ:Lʿˑ/ⁱˊ;

.field public static final ᵔᵢ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˈˋ/ʼˎ;

.field public static final ﾞᴵ:Lʿˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˋ/ʼˎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˋ/ʼˎ;->ﹳٴ:Lˈˋ/ʼˎ;

    const-string v0, "arch"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼˎ;->ⁱˊ:Lʿˑ/ⁱˊ;

    const-string v0, "model"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼˎ;->ʽ:Lʿˑ/ⁱˊ;

    const-string v0, "cores"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼˎ;->ˈ:Lʿˑ/ⁱˊ;

    const-string v0, "ram"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼˎ;->ˑﹳ:Lʿˑ/ⁱˊ;

    const-string v0, "diskSpace"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼˎ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    const-string v0, "simulator"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼˎ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    const-string v0, "state"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼˎ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    const-string v0, "manufacturer"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼˎ;->ʼˎ:Lʿˑ/ⁱˊ;

    const-string v0, "modelClass"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    move-result-object v0

    sput-object v0, Lˈˋ/ʼˎ;->ˆʾ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lˈˋ/ʼـ;

    check-cast p2, Lʿˑ/ˈ;

    check-cast p1, Lˈˋ/ᵔٴ;

    iget v0, p1, Lˈˋ/ᵔٴ;->ﹳٴ:I

    sget-object v1, Lˈˋ/ʼˎ;->ⁱˊ:Lʿˑ/ⁱˊ;

    invoke-interface {p2, v1, v0}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼˎ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼˎ;->ˈ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lˈˋ/ᵔٴ;->ʽ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼˎ;->ˑﹳ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lˈˋ/ᵔٴ;->ˈ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼˎ;->ﾞᴵ:Lʿˑ/ⁱˊ;

    iget-wide v1, p1, Lˈˋ/ᵔٴ;->ˑﹳ:J

    invoke-interface {p2, v0, v1, v2}, Lʿˑ/ˈ;->ⁱˊ(Lʿˑ/ⁱˊ;J)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼˎ;->ᵎﹶ:Lʿˑ/ⁱˊ;

    iget-boolean v1, p1, Lˈˋ/ᵔٴ;->ﾞᴵ:Z

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ᵎﹶ(Lʿˑ/ⁱˊ;Z)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼˎ;->ᵔᵢ:Lʿˑ/ⁱˊ;

    iget v1, p1, Lˈˋ/ᵔٴ;->ᵎﹶ:I

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﹳٴ(Lʿˑ/ⁱˊ;I)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼˎ;->ʼˎ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˈˋ/ᵔٴ;->ᵔᵢ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˈˋ/ʼˎ;->ˆʾ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lˈˋ/ᵔٴ;->ʼˎ:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method
