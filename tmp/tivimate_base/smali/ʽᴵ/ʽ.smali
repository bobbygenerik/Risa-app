.class public final Lʽᴵ/ʽ;
.super Lʽᴵ/ˊʻ;
.source "SourceFile"


# instance fields
.field public final synthetic ˉʿ:Ljava/lang/reflect/AccessibleObject;

.field public final synthetic ٴﹶ:I

.field public final synthetic ﾞʻ:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʽᴵ/ʽ;->ٴﹶ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᴵ/ʽ;->ˉʿ:Ljava/lang/reflect/AccessibleObject;

    iput-object p2, p0, Lʽᴵ/ʽ;->ﾞʻ:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʽᴵ/ʽ;->ٴﹶ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᴵ/ʽ;->ˉʿ:Ljava/lang/reflect/AccessibleObject;

    iput-object p2, p0, Lʽᴵ/ʽ;->ﾞʻ:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lʽᴵ/ʽ;->ٴﹶ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽᴵ/ʽ;->ﾞʻ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʽᴵ/ʽ;->ﾞʻ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˑﹳ()Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lʽᴵ/ʽ;->ٴﹶ:I

    const/4 v1, 0x0

    iget-object v2, p0, Lʽᴵ/ʽ;->ˉʿ:Ljava/lang/reflect/AccessibleObject;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Ljava/lang/reflect/Method;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lʽᴵ/ʽ;->ﾞʻ:Ljava/lang/Class;

    aput-object v4, v0, v3

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v2, Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
