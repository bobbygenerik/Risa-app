.class public abstract Lˈᵔ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lʼᐧ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʼᐧ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lʼᐧ/ﹳٴ;-><init>(I)V

    sput-object v0, Lˈᵔ/ⁱˊ;->ﹳٴ:Lʼᐧ/ﹳٴ;

    return-void
.end method

.method public static ﹳٴ(Lˏـ/ˉʿ;Lˏـ/ˉʿ;)Lˏـ/ˉʿ;
    .locals 5

    new-instance v0, Lˉˆ/ʿ;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lˉˆ/ʿ;-><init>(I)V

    new-instance v1, Lˏـ/ᵎﹶ;

    iget-object v2, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˊⁱ/ˑﹳ;

    invoke-direct {v1, v2}, Lˏـ/ᵎﹶ;-><init>(Lˊⁱ/ˑﹳ;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Lˈᵔ/ﹳٴ;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v0, v4}, Lˈᵔ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v0, Lˈᵔ/ⁱˊ;->ﹳٴ:Lʼᐧ/ﹳٴ;

    invoke-virtual {p0, v0, v3}, Lˏـ/ˉʿ;->ʽ(Ljava/util/concurrent/Executor;Lˏـ/ﹳٴ;)Lˏـ/ˉʿ;

    invoke-virtual {p1, v0, v3}, Lˏـ/ˉʿ;->ʽ(Ljava/util/concurrent/Executor;Lˏـ/ﹳٴ;)Lˏـ/ˉʿ;

    iget-object p0, v1, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    return-object p0
.end method
