.class public final Lﹳﹶ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧᵢ/ﾞʻ;


# static fields
.field public static final ʽʽ:Lˎᵢ/ﹳᐧ;


# instance fields
.field public final ʾˋ:Lʽᴵ/ﾞʻ;

.field public final ᴵˊ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lˎᵢ/ﹳᐧ;->ˈ:Lﹶˑ/ʼˎ;

    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ﾞʻ(Ljava/lang/String;)Lˎᵢ/ﹳᐧ;

    move-result-object v0

    sput-object v0, Lﹳﹶ/ⁱˊ;->ʽʽ:Lˎᵢ/ﹳᐧ;

    return-void
.end method

.method public constructor <init>(Lʽᴵ/ﾞʻ;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳﹶ/ⁱˊ;->ʾˋ:Lʽᴵ/ﾞʻ;

    iput-boolean p2, p0, Lﹳﹶ/ⁱˊ;->ᴵˊ:Z

    return-void
.end method


# virtual methods
.method public final ˆʾ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lﹳﹶ/ⁱˊ;->ᴵˊ:Z

    iget-object v1, p0, Lﹳﹶ/ⁱˊ;->ʾˋ:Lʽᴵ/ﾞʻ;

    if-eqz v0, :cond_0

    new-instance v0, Lˎᵢ/ʼʼ;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Lˎᵢ/ʼʼ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Lˊᐧ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lʽᴵ/ᵔﹳ;

    invoke-direct {v2, v0}, Lʽᴵ/ᵔﹳ;-><init>(Lˊᐧ/ᵎﹶ;)V

    invoke-virtual {v1, v2, p1}, Lʽᴵ/ﾞʻ;->ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V

    iget-wide v1, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-virtual {v0, v1, v2}, Lˊᐧ/ﾞᴵ;->יـ(J)Lˊᐧ/ʼˎ;

    move-result-object p1

    new-instance v0, Lˎᵢ/ʼʼ;

    const/4 v1, 0x0

    sget-object v2, Lﹳﹶ/ⁱˊ;->ʽʽ:Lˎᵢ/ﹳᐧ;

    invoke-direct {v0, v2, v1, p1}, Lˎᵢ/ʼʼ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0
.end method
