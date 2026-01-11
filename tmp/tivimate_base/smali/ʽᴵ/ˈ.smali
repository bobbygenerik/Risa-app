.class public final Lʽᴵ/ˈ;
.super Lʽᴵ/ˊʻ;
.source "SourceFile"


# instance fields
.field public final synthetic ˉʿ:Ljava/lang/Class;

.field public final synthetic ٴﹶ:Ljava/lang/reflect/Method;

.field public final synthetic ﾞʻ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᴵ/ˈ;->ٴﹶ:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lʽᴵ/ˈ;->ﾞʻ:Ljava/lang/Object;

    iput-object p3, p0, Lʽᴵ/ˈ;->ˉʿ:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʽᴵ/ˈ;->ˉʿ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lʽᴵ/ˈ;->ˉʿ:Ljava/lang/Class;

    aput-object v2, v0, v1

    iget-object v1, p0, Lʽᴵ/ˈ;->ٴﹶ:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lʽᴵ/ˈ;->ﾞʻ:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
