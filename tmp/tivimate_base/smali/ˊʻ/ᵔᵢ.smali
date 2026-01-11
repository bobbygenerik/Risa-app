.class public final Lˊʻ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Z

.field public final ˈ:Z

.field public final ˑﹳ:I

.field public final ᵎﹶ:Landroid/app/PendingIntent;

.field public ⁱˊ:Landroidx/core/graphics/drawable/IconCompat;

.field public final ﹳٴ:Landroid/os/Bundle;

.field public final ﾞᴵ:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 10

    .prologue
    const v0, 0x7f08009d

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->ﹳٴ(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lˊʻ/ᵔᵢ;->ˈ:Z

    iput-object v0, p0, Lˊʻ/ᵔᵢ;->ⁱˊ:Landroidx/core/graphics/drawable/IconCompat;

    iget v3, v0, Landroidx/core/graphics/drawable/IconCompat;->ﹳٴ:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v5, v0, Landroidx/core/graphics/drawable/IconCompat;->ⁱˊ:Ljava/lang/Object;

    const-string v6, "Unable to get icon type "

    const-string v7, "IconCompat"

    const/16 v8, 0x1c

    if-lt v3, v8, :cond_0

    invoke-static {v5}, Lʼᐧ/ʽ;->ˉʿ(Ljava/lang/Object;)I

    move-result v3

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v8, "getType"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    goto :goto_3

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    goto :goto_3

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    :goto_3
    move v3, v4

    :cond_1
    :goto_4
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->ⁱˊ()I

    move-result v0

    iput v0, p0, Lˊʻ/ᵔᵢ;->ˑﹳ:I

    :cond_2
    invoke-static {p1}, Lˊʻ/ʼˎ;->ⁱˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lˊʻ/ᵔᵢ;->ﾞᴵ:Ljava/lang/CharSequence;

    iput-object p2, p0, Lˊʻ/ᵔᵢ;->ᵎﹶ:Landroid/app/PendingIntent;

    iput-object v1, p0, Lˊʻ/ᵔᵢ;->ﹳٴ:Landroid/os/Bundle;

    iput-boolean v2, p0, Lˊʻ/ᵔᵢ;->ʽ:Z

    iput-boolean v2, p0, Lˊʻ/ᵔᵢ;->ˈ:Z

    return-void
.end method
