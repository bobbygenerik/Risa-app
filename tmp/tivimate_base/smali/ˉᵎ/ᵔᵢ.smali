.class public final Lˉᵎ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˏ/ˈ;


# static fields
.field public static final ʽʽ:Lˉᵎ/ᵔᵢ;

.field public static final ˈٴ:Lˉᵎ/ᵔᵢ;

.field public static final ᴵˊ:Lˉᵎ/ᵔᵢ;

.field public static final ᴵᵔ:Lˉᵎ/ᵔᵢ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lˉᵎ/ᵔᵢ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˉᵎ/ᵔᵢ;-><init>(I)V

    sput-object v0, Lˉᵎ/ᵔᵢ;->ᴵˊ:Lˉᵎ/ᵔᵢ;

    new-instance v0, Lˉᵎ/ᵔᵢ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˉᵎ/ᵔᵢ;-><init>(I)V

    sput-object v0, Lˉᵎ/ᵔᵢ;->ʽʽ:Lˉᵎ/ᵔᵢ;

    new-instance v0, Lˉᵎ/ᵔᵢ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lˉᵎ/ᵔᵢ;-><init>(I)V

    sput-object v0, Lˉᵎ/ᵔᵢ;->ˈٴ:Lˉᵎ/ᵔᵢ;

    new-instance v0, Lˉᵎ/ᵔᵢ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lˉᵎ/ᵔᵢ;-><init>(I)V

    sput-object v0, Lˉᵎ/ᵔᵢ;->ᴵᵔ:Lˉᵎ/ᵔᵢ;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˉᵎ/ᵔᵢ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˈ(Landroidx/leanback/widget/ʻٴ;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lˉᵎ/ᵔᵢ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lˏ/ˉˆ;

    const-class v1, Lˋˎ/ˈ;

    const-class v2, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ʻٴ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lᴵי/ʾᵎ;->ʼˎ(Ljava/util/concurrent/Executor;)Lᴵי/ˏי;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Lˏ/ˉˆ;

    const-class v1, Lˋˎ/ⁱˊ;

    const-class v2, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ʻٴ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lᴵי/ʾᵎ;->ʼˎ(Ljava/util/concurrent/Executor;)Lᴵי/ˏי;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-instance v0, Lˏ/ˉˆ;

    const-class v1, Lˋˎ/ʽ;

    const-class v2, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ʻٴ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lᴵי/ʾᵎ;->ʼˎ(Ljava/util/concurrent/Executor;)Lᴵי/ˏי;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-instance v0, Lˏ/ˉˆ;

    const-class v1, Lˋˎ/ﹳٴ;

    const-class v2, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Lˏ/ˉˆ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ʻٴ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lᴵי/ʾᵎ;->ʼˎ(Ljava/util/concurrent/Executor;)Lᴵי/ˏי;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
