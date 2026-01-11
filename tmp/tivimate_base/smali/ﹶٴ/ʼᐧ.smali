.class public final Lﹶٴ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיʼ/ﹳٴ;


# static fields
.field public static final ⁱˊ:Lﹶٴ/ᵔʾ;

.field public static final ﹳٴ:Lﹶٴ/ʼᐧ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lﹶٴ/ʼᐧ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹶٴ/ʼᐧ;->ﹳٴ:Lﹶٴ/ʼᐧ;

    new-instance v0, Lﹶٴ/ᵔʾ;

    const-string v1, "kotlin.String"

    sget-object v2, Lˉﾞ/ⁱˊ;->ᵎﹶ:Lˉﾞ/ⁱˊ;

    invoke-direct {v0, v1, v2}, Lﹶٴ/ᵔʾ;-><init>(Ljava/lang/String;Lˉﾞ/ʽ;)V

    sput-object v0, Lﹶٴ/ʼᐧ;->ⁱˊ:Lﹶٴ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/parse/ʽˑ;->ʾᵎ()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    sget-object v0, Lﹶٴ/ʼᐧ;->ⁱˊ:Lﹶٴ/ᵔʾ;

    return-object v0
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lʻʻ/ʽ;->ʼˎ(Ljava/lang/String;)V

    return-void
.end method
