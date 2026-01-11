.class public final Lﹶᐧ/ﹳٴ;
.super Landroid/text/Editable$Factory;
.source "SourceFile"


# static fields
.field public static ʽ:Ljava/lang/Class;

.field public static volatile ⁱˊ:Lﹶᐧ/ﹳٴ;

.field public static final ﹳٴ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹶᐧ/ﹳٴ;->ﹳٴ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 2

    .prologue
    sget-object v0, Lﹶᐧ/ﹳٴ;->ʽ:Ljava/lang/Class;

    if-eqz v0, :cond_0

    new-instance v1, Lـﹶ/ʽﹳ;

    invoke-direct {v1, v0, p1}, Lـﹶ/ʽﹳ;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method
