.class public final enum Lʽﹳ/ﾞʻ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum ʾˋ:Lʽﹳ/ﾞʻ;

.field public static final synthetic ᴵˊ:[Lʽﹳ/ﾞʻ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lʽﹳ/ﾞʻ;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lʽﹳ/ﾞʻ;->ʾˋ:Lʽﹳ/ﾞʻ;

    const/4 v1, 0x1

    new-array v1, v1, [Lʽﹳ/ﾞʻ;

    aput-object v0, v1, v2

    sput-object v1, Lʽﹳ/ﾞʻ;->ᴵˊ:[Lʽﹳ/ﾞʻ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʽﹳ/ﾞʻ;
    .locals 1

    const-class v0, Lʽﹳ/ﾞʻ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʽﹳ/ﾞʻ;

    return-object p0
.end method

.method public static values()[Lʽﹳ/ﾞʻ;
    .locals 1

    sget-object v0, Lʽﹳ/ﾞʻ;->ᴵˊ:[Lʽﹳ/ﾞʻ;

    invoke-virtual {v0}, [Lʽﹳ/ﾞʻ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʽﹳ/ﾞʻ;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DirectExecutor"

    return-object v0
.end method
