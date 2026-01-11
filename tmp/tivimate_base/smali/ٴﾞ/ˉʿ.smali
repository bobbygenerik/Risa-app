.class public final Lٴﾞ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lٴﾞ/ˉʿ;


# instance fields
.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lٴﾞ/ˉʿ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lٴﾞ/ˉʿ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lٴﾞ/ˉʿ;->ⁱˊ:Lٴﾞ/ˉʿ;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴﾞ/ˉʿ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lٴﾞ/ˉʿ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lٴﾞ/ˉʿ;

    iget-object v0, p0, Lٴﾞ/ˉʿ;->ﹳٴ:Ljava/lang/String;

    iget-object p1, p1, Lٴﾞ/ˉʿ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0, p1}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lٴﾞ/ˉʿ;->ﹳٴ:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
