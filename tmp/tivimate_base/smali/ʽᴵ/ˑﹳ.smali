.class public final Lʽᴵ/ˑﹳ;
.super Lʽᴵ/ˊʻ;
.source "SourceFile"


# instance fields
.field public final synthetic ˉʿ:I

.field public final synthetic ٴﹶ:Ljava/lang/reflect/Method;

.field public final synthetic ﾞʻ:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᴵ/ˑﹳ;->ٴﹶ:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lʽᴵ/ˑﹳ;->ﾞʻ:Ljava/lang/Class;

    iput p3, p0, Lʽᴵ/ˑﹳ;->ˉʿ:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʽᴵ/ˑﹳ;->ﾞʻ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lʽᴵ/ˑﹳ;->ˉʿ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lʽᴵ/ˑﹳ;->ﾞʻ:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lʽᴵ/ˑﹳ;->ٴﹶ:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
