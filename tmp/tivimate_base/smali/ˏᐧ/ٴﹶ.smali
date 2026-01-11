.class public final enum Lˏᐧ/ٴﹶ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic ʽʽ:[Lˏᐧ/ٴﹶ;

.field public static final enum ʾˋ:Lˏᐧ/ٴﹶ;

.field public static final ᴵˊ:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lˏᐧ/ٴﹶ;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lˏᐧ/ٴﹶ;->ʾˋ:Lˏᐧ/ٴﹶ;

    const/4 v1, 0x1

    new-array v1, v1, [Lˏᐧ/ٴﹶ;

    aput-object v0, v1, v2

    sput-object v1, Lˏᐧ/ٴﹶ;->ʽʽ:[Lˏᐧ/ٴﹶ;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lˏᐧ/ٴﹶ;->ᴵˊ:Landroid/os/Handler;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lˏᐧ/ٴﹶ;
    .locals 1

    const-class v0, Lˏᐧ/ٴﹶ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lˏᐧ/ٴﹶ;

    return-object p0
.end method

.method public static values()[Lˏᐧ/ٴﹶ;
    .locals 1

    sget-object v0, Lˏᐧ/ٴﹶ;->ʽʽ:[Lˏᐧ/ٴﹶ;

    invoke-virtual {v0}, [Lˏᐧ/ٴﹶ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lˏᐧ/ٴﹶ;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lˏᐧ/ٴﹶ;->ᴵˊ:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
